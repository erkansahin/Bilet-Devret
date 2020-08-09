// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'reset_password_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ResetPasswordFormEventTearOff {
  const _$ResetPasswordFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  ResetButtonPressed resetButtonPressed() {
    return const ResetButtonPressed();
  }
}

// ignore: unused_element
const $ResetPasswordFormEvent = _$ResetPasswordFormEventTearOff();

mixin _$ResetPasswordFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result resetButtonPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result resetButtonPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetButtonPressed(ResetButtonPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetButtonPressed(ResetButtonPressed value),
    @required Result orElse(),
  });
}

abstract class $ResetPasswordFormEventCopyWith<$Res> {
  factory $ResetPasswordFormEventCopyWith(ResetPasswordFormEvent value,
          $Res Function(ResetPasswordFormEvent) then) =
      _$ResetPasswordFormEventCopyWithImpl<$Res>;
}

class _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $ResetPasswordFormEventCopyWith<$Res> {
  _$ResetPasswordFormEventCopyWithImpl(this._value, this._then);

  final ResetPasswordFormEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('emailStr', emailStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result resetButtonPressed(),
  }) {
    assert(emailChanged != null);
    assert(resetButtonPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result resetButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetButtonPressed(ResetButtonPressed value),
  }) {
    assert(emailChanged != null);
    assert(resetButtonPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetButtonPressed(ResetButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ResetPasswordFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $ResetButtonPressedCopyWith<$Res> {
  factory $ResetButtonPressedCopyWith(
          ResetButtonPressed value, $Res Function(ResetButtonPressed) then) =
      _$ResetButtonPressedCopyWithImpl<$Res>;
}

class _$ResetButtonPressedCopyWithImpl<$Res>
    extends _$ResetPasswordFormEventCopyWithImpl<$Res>
    implements $ResetButtonPressedCopyWith<$Res> {
  _$ResetButtonPressedCopyWithImpl(
      ResetButtonPressed _value, $Res Function(ResetButtonPressed) _then)
      : super(_value, (v) => _then(v as ResetButtonPressed));

  @override
  ResetButtonPressed get _value => super._value as ResetButtonPressed;
}

class _$ResetButtonPressed
    with DiagnosticableTreeMixin
    implements ResetButtonPressed {
  const _$ResetButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordFormEvent.resetButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResetPasswordFormEvent.resetButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result resetButtonPressed(),
  }) {
    assert(emailChanged != null);
    assert(resetButtonPressed != null);
    return resetButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result resetButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetButtonPressed != null) {
      return resetButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result resetButtonPressed(ResetButtonPressed value),
  }) {
    assert(emailChanged != null);
    assert(resetButtonPressed != null);
    return resetButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result resetButtonPressed(ResetButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetButtonPressed != null) {
      return resetButtonPressed(this);
    }
    return orElse();
  }
}

abstract class ResetButtonPressed implements ResetPasswordFormEvent {
  const factory ResetButtonPressed() = _$ResetButtonPressed;
}

class _$ResetPasswordFormStateTearOff {
  const _$ResetPasswordFormStateTearOff();

  _ResetPasswordFormState call(
      {@required String emailAddress,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _ResetPasswordFormState(
      emailAddress: emailAddress,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ResetPasswordFormState = _$ResetPasswordFormStateTearOff();

mixin _$ResetPasswordFormState {
  String get emailAddress;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $ResetPasswordFormStateCopyWith<ResetPasswordFormState> get copyWith;
}

abstract class $ResetPasswordFormStateCopyWith<$Res> {
  factory $ResetPasswordFormStateCopyWith(ResetPasswordFormState value,
          $Res Function(ResetPasswordFormState) then) =
      _$ResetPasswordFormStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$ResetPasswordFormStateCopyWithImpl<$Res>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  _$ResetPasswordFormStateCopyWithImpl(this._value, this._then);

  final ResetPasswordFormState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$ResetPasswordFormStateCopyWith<$Res>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  factory _$ResetPasswordFormStateCopyWith(_ResetPasswordFormState value,
          $Res Function(_ResetPasswordFormState) then) =
      __$ResetPasswordFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$ResetPasswordFormStateCopyWithImpl<$Res>
    extends _$ResetPasswordFormStateCopyWithImpl<$Res>
    implements _$ResetPasswordFormStateCopyWith<$Res> {
  __$ResetPasswordFormStateCopyWithImpl(_ResetPasswordFormState _value,
      $Res Function(_ResetPasswordFormState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordFormState));

  @override
  _ResetPasswordFormState get _value => super._value as _ResetPasswordFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_ResetPasswordFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_ResetPasswordFormState
    with DiagnosticableTreeMixin
    implements _ResetPasswordFormState {
  const _$_ResetPasswordFormState(
      {@required this.emailAddress,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String emailAddress;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResetPasswordFormState(emailAddress: $emailAddress, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResetPasswordFormState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$ResetPasswordFormStateCopyWith<_ResetPasswordFormState> get copyWith =>
      __$ResetPasswordFormStateCopyWithImpl<_ResetPasswordFormState>(
          this, _$identity);
}

abstract class _ResetPasswordFormState implements ResetPasswordFormState {
  const factory _ResetPasswordFormState(
          {@required
              String emailAddress,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_ResetPasswordFormState;

  @override
  String get emailAddress;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$ResetPasswordFormStateCopyWith<_ResetPasswordFormState> get copyWith;
}
