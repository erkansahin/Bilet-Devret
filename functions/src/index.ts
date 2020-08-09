import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';
admin.initializeApp();

const db = admin.firestore();
const fcm = admin.messaging();


export const sendToDevice = functions.firestore
    .document('userChats/{userID}/chatID/{chatID}')
    .onCreate(async snapshot => {


        const message = snapshot.data();
        console.log(message);

        if (message.unreadCount === 0) {
            const querySnapshot = await db
                .collection('users')
                .doc(message.otherUserID)
                .collection('tokens')
                .get();

            const tokens = querySnapshot.docs.map(snap => snap.id);


            const payload: admin.messaging.MessagingPayload = {
                notification: {
                    title: `${message.otherUserDisplayName}`,
                    body: message.type === 0 ? `${message.lastMessage}` : 'Photo',
                    click_action: 'FLUTTER_NOTIFICATION_CLICK',
                }
            };
            return fcm.sendToDevice(tokens, payload);

        }


        return null;
    });

export const onUpdate = functions.firestore
    .document('userChats/{userID}/chatID/{chatID}')
    .onUpdate(async snapshot => {


        const message = snapshot.after;
        console.log(message);
        if (message.data().unreadCount === 0) {

            const querySnapshot = await db
                .collection('users')
                .doc(message.data().otherUserID)
                .collection('tokens')
                .get();

            const tokens = querySnapshot.docs.map(snap => snap.id);

            const payload: admin.messaging.MessagingPayload = {

                notification: {
                    title: `${message.data().otherUserDisplayName}`,
                    body: message.data().type === 0 ? `${message.data().lastMessage}` : 'Photo',
                    click_action: 'FLUTTER_NOTIFICATION_CLICK',

                }
            };

            return fcm.sendToDevice(tokens, payload);

        }
        return null;
    });