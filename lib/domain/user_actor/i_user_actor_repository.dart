import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'user_actor_failure.dart';

abstract class IUserActorRepository {
  Future<Option<UserActorFailure>> block({@required String otherUserID});
  Future<Option<UserActorFailure>> unblock({@required String otherUserID});
  Future<Either<UserActorFailure, bool>> checkIfCurrentUserBlockedThePair(
      {@required String otherUserID});
  Future<Either<UserActorFailure, bool>> checkIfThePairBlockedCurrentUser(
      {@required String otherUserID});
}
