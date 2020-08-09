import 'dart:async';
import 'package:bilet_devret/domain/auth/auth_failure.dart';
import 'package:bilet_devret/domain/auth/i_auth_facade.dart';
import 'package:bilet_devret/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
part 'reset_password_form_bloc.freezed.dart';
part 'reset_password_form_event.dart';
part 'reset_password_form_state.dart';

@injectable
class ResetPasswordFormBloc
    extends Bloc<ResetPasswordFormEvent, ResetPasswordFormState> {
  final IAuthFacade _authFacade;

  ResetPasswordFormBloc(this._authFacade)
      : super(ResetPasswordFormState.initial());
  @override
  Stream<ResetPasswordFormState> mapEventToState(
    ResetPasswordFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.emailStr,
          authFailureOrSuccessOption: none(),
        );
      },
      resetButtonPressed: (e) async* {
        yield* _resetPasswordOnAuthFacadeWithEmail(
          _authFacade.resetPassword,
        );
      },
    );
  }

  Stream<ResetPasswordFormState> _resetPasswordOnAuthFacadeWithEmail(
    Future<Either<AuthFailure, Unit>> Function({
      @required String emailAddress,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = validateEmailAddress(state.emailAddress).isRight();

    if (isEmailValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
