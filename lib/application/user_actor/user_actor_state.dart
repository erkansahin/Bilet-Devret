part of 'user_actor_bloc.dart';

@freezed
abstract class UserActorState with _$UserActorState {
  const factory UserActorState(
      {@required
          bool currentUserBlockedThePair,
      @required
          bool pairBlockedCurrentUser,
      @required
          bool isActionInProgress,
      @required
          Option<UserActorFailure> blockActionFailureOption,
      @required
          Option<Either<UserActorFailure, bool>> userStateCheckFailureOrState,
      @required
          bool isCurrentUserStateChecked}) = _UserActorState;

  factory UserActorState.initial() => UserActorState(
        currentUserBlockedThePair: true,
        blockActionFailureOption: none(),
        pairBlockedCurrentUser: true,
        isActionInProgress: false,
        isCurrentUserStateChecked: false,
        userStateCheckFailureOrState: none(),
      );
}
 