import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'user.dart';
import 'user_detail.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String userName,
    @required String emailAddress,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> resetPassword({
    @required String emailAddress,
  });
  Future<Option<UserDetail>> getUserDetails({@required UniqueId userID});
}
