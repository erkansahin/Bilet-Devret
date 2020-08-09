part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorEvent with _$UserActorEvent {
  const factory UserActorEvent.currentUserBlockedThePair(
      {@required String otherUserID}) = _Blocked;
  const factory UserActorEvent.currentUserUnblockedThePair(
      {@required String otherUserID}) = _Unblocked;

  const factory UserActorEvent.checkIfCurrentUserBlockedThePair(
      {@required String otherUserID}) = CheckIfCurrentUserBlockedThePair;

  const factory UserActorEvent.checkIfThePairBlockedCurrentUser(
      {@required String otherUserID}) = CheckIfThePairBlockedCurrentUser;
}
