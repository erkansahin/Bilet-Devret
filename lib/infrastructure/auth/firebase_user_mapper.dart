import 'package:bilet_devret/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(FirebaseUser _) {
    return _ == null
        ? null
        : User(
            id: _.uid,
            name: _.displayName ?? _.email.split('@').first,
            emailAddress: _.email,
          );
  }
}
