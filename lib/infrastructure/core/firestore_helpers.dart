import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on Firestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance.collection('users').document(user.id);
  }

  Future<String> get currentUserID async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return user.id;
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get postCollection => collection('posts');
}
