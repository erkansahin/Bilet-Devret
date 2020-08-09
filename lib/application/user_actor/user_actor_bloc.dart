import 'dart:async';

import 'package:bilet_devret/domain/user_actor/user_actor_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/user_actor/i_user_actor_repository.dart';

part 'user_actor_bloc.freezed.dart';
part 'user_actor_event.dart';
part 'user_actor_state.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserActorRepository _userActorRepository;
  UserActorBloc(this._userActorRepository) : super(UserActorState.initial());

  @override
  Stream<UserActorState> mapEventToState(
    UserActorEvent event,
  ) async* {
    yield* event.map(
      currentUserBlockedThePair: (e) async* {
        yield state.copyWith(isActionInProgress: true);
        final failureOption =
            await _userActorRepository.block(otherUserID: e.otherUserID);

        UserActorState newState = state;
        if (failureOption.isNone()) {
          newState = state.copyWith(
              currentUserBlockedThePair: true,
              isActionInProgress: false,
              blockActionFailureOption: failureOption);
        } else if (failureOption.isSome()) {
          newState = state.copyWith(
              isActionInProgress: false,
              blockActionFailureOption: failureOption);
        }

        yield state.copyWith(
            currentUserBlockedThePair: newState.currentUserBlockedThePair,
            isActionInProgress: newState.isActionInProgress,
            blockActionFailureOption: newState.blockActionFailureOption);
      },
      currentUserUnblockedThePair: (e) async* {
        yield state.copyWith(isActionInProgress: true);
        final failureOption =
            await _userActorRepository.unblock(otherUserID: e.otherUserID);
        UserActorState newState = state;
        if (failureOption.isNone()) {
          newState = state.copyWith(
              currentUserBlockedThePair: false,
              isActionInProgress: false,
              blockActionFailureOption: failureOption);
        } else if (failureOption.isSome()) {
          newState = state.copyWith(
              isActionInProgress: false,
              blockActionFailureOption: failureOption);
        }
        yield state.copyWith(
            currentUserBlockedThePair: newState.currentUserBlockedThePair,
            isActionInProgress: newState.isActionInProgress,
            blockActionFailureOption: newState.blockActionFailureOption);
      },
      checkIfCurrentUserBlockedThePair: (e) async* {
        yield state.copyWith(isActionInProgress: true);

        final Either<UserActorFailure, bool> failureOrBool =
            await _userActorRepository.checkIfCurrentUserBlockedThePair(
                otherUserID: e.otherUserID);

        UserActorState updatedState = state;
        yield failureOrBool.fold(
            (failure) => updatedState = state.copyWith(
                userStateCheckFailureOrState: some(failureOrBool)),
            (isBlocked) => updatedState = isBlocked
                ? state.copyWith(
                    currentUserBlockedThePair: isBlocked,
                    isActionInProgress: false,
                    isCurrentUserStateChecked: true,
                    userStateCheckFailureOrState: some(failureOrBool))
                : state.copyWith(
                    currentUserBlockedThePair: isBlocked,
                    isActionInProgress: false,
                    isCurrentUserStateChecked: true,
                    userStateCheckFailureOrState: some(failureOrBool)));
        yield state.copyWith(
            currentUserBlockedThePair: updatedState.currentUserBlockedThePair,
            isActionInProgress: updatedState.isActionInProgress,
            isCurrentUserStateChecked: updatedState.isCurrentUserStateChecked,
            userStateCheckFailureOrState:
                updatedState.userStateCheckFailureOrState);
      },
      checkIfThePairBlockedCurrentUser: (e) async* {
        yield state.copyWith(isActionInProgress: true);
        final Either<UserActorFailure, bool> failureOrBool =
            await _userActorRepository.checkIfThePairBlockedCurrentUser(
                otherUserID: e.otherUserID);
        UserActorState updatedState = state;
        yield failureOrBool.fold(
            (failure) => updatedState = state.copyWith(
                userStateCheckFailureOrState: some(failureOrBool)),
            (isBlocked) => updatedState = isBlocked
                ? state.copyWith(
                    pairBlockedCurrentUser: true,
                    isActionInProgress: false,
                    userStateCheckFailureOrState: some(failureOrBool))
                : state.copyWith(
                    pairBlockedCurrentUser: false,
                    isActionInProgress: false,
                    userStateCheckFailureOrState: some(failureOrBool)));

        yield state.copyWith(
            pairBlockedCurrentUser: updatedState.pairBlockedCurrentUser,
            isActionInProgress: updatedState.isActionInProgress,
            userStateCheckFailureOrState:
                updatedState.userStateCheckFailureOrState);
      },
    );
  }
}
