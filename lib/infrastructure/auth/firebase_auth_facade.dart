import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../application/notification/notification_bloc.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/user_detail.dart';
import '../../domain/core/value_objects.dart';
import '../../injection.dart';
import '../core/firestore_helpers.dart';
import 'firebase_user_mapper.dart';

@prod
@lazySingleton
@RegisterAs(IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final Firestore _firestore;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
    this._firestore,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String userName,
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      )
          .then((_) {
        _firebaseAuth.currentUser().then((value) async {
          value.sendEmailVerification();
          _createUserDocumentWhenRegisteredWithEmail(
              userName: userName, firebaseUser: value);
          signOut();
        });

        return right(unit);
      });
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future _createUserDocumentWhenRegisteredWithEmail(
      {@required FirebaseUser firebaseUser, @required String userName}) async {
    await _firestore.collection('users').document(firebaseUser.uid).setData(
      {"displayName": userName, "photoURL": ""},
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      )
          .then((_) async {
        if (_.user.isEmailVerified) {
          getIt<NotificationBloc>().add(const NotificationEvent.register());
          return right(unit);
        } else {
          return left(const AuthFailure.emailNotVerified());
        }
      });
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    @required String emailAddress,
  }) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddress);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.userNotFound());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async => _firebaseAuth
      .currentUser()
      .then((u) => optionOf(_firebaseUserMapper.toDomain(u)));

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth.signInWithCredential(authCredential).then(
        (r) async {
          await _createUserDocumentIfNewUserSignedInWithGoogle(r);
          getIt<NotificationBloc>().add(const NotificationEvent.register());

          return right(unit);
        },
      );
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  Future _createUserDocumentIfNewUserSignedInWithGoogle(AuthResult r) async {
    if (r.additionalUserInfo.isNewUser) {
      await _firestore.collection('users').document(r.user.uid).setData(
        {"displayName": r.user.displayName, "photoURL": ""},
      );
    }
  }

  @override
  Future<void> signOut() async {
    String currentUserID;
    await getSignedInUser()
        .then((_) => _.fold(() => null, (user) => currentUserID = user.id));
    getIt<NotificationBloc>()
        .add(NotificationEvent.deregister(currentUserID: currentUserID));
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  @override
  Future<Option<UserDetail>> getUserDetails({UniqueId userID}) async {
    final String userIDStr = userID.getOrCrash();
    return _firestore
        .collection('users')
        .document(userIDStr)
        .get()
        .then((value) => optionOf(UserDetail(
              id: UniqueId.fromUniqueString(value.documentID),
              photoURL: value.data['photoURL'],
              displayName: value.data['displayName'],
            )));
  }
}
