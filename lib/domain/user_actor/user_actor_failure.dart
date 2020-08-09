import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_actor_failure.freezed.dart';

@freezed
abstract class UserActorFailure with _$UserActorFailure {
  const factory UserActorFailure.serverError() = ServerError;
  const factory UserActorFailure.internetConnectionFailure() =
      InternetConnectionFailure;
}
