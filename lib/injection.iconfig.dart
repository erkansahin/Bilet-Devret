// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:bilet_devret/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:bilet_devret/infrastructure/auth/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:bilet_devret/infrastructure/auth/firebase_auth_facade.dart';
import 'package:bilet_devret/domain/auth/i_auth_facade.dart';
import 'package:bilet_devret/infrastructure/chat/chat_repository.dart';
import 'package:bilet_devret/domain/chat/i_chat_repository.dart';
import 'package:bilet_devret/infrastructure/notification/notification_repository.dart';
import 'package:bilet_devret/domain/notification/i_notification_repository.dart';
import 'package:bilet_devret/infrastructure/post/post_repository.dart';
import 'package:bilet_devret/domain/posts/i_post_repository.dart';
import 'package:bilet_devret/infrastructure/user/user_actor_repository.dart';
import 'package:bilet_devret/domain/user_actor/i_user_actor_repository.dart';
import 'package:bilet_devret/application/notification/notification_bloc.dart';
import 'package:bilet_devret/application/post/post_actor/post_actor_bloc.dart';
import 'package:bilet_devret/application/post/post_form/post_form_bloc.dart';
import 'package:bilet_devret/application/post/post_watcher/post_watcher_bloc.dart';
import 'package:bilet_devret/application/auth/register_form/register_form_bloc.dart';
import 'package:bilet_devret/application/auth/reset_password_form/reset_password_form_bloc.dart';
import 'package:bilet_devret/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:bilet_devret/application/user_actor/user_actor_bloc.dart';
import 'package:bilet_devret/application/auth/user_details_watcher/user_details_watcher_bloc.dart';
import 'package:bilet_devret/application/chat/user_dialogs_overview_watcher/user_dialogs_overview_watcher_bloc.dart';
import 'package:bilet_devret/application/auth/auth_bloc.dart';
import 'package:bilet_devret/application/chat/dialog/chat_dialog_bloc.dart';
import 'package:bilet_devret/application/chat/dialog_watcher/dialog_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<NotificationBloc>(
      () => NotificationBloc(g<INotificationRepository>()));
  g.registerFactory<PostActorBloc>(() => PostActorBloc(g<IPostRepository>()));
  g.registerFactory<PostFormBloc>(() => PostFormBloc(g<IPostRepository>()));
  g.registerFactory<PostWatcherBloc>(
      () => PostWatcherBloc(g<IPostRepository>()));
  g.registerFactory<RegisterFormBloc>(() => RegisterFormBloc(g<IAuthFacade>()));
  g.registerFactory<ResetPasswordFormBloc>(
      () => ResetPasswordFormBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<UserActorBloc>(
      () => UserActorBloc(g<IUserActorRepository>()));
  g.registerFactory<UserDetailsWatcherBloc>(
      () => UserDetailsWatcherBloc(g<IAuthFacade>()));
  g.registerFactory<UserDialogsOverviewWatcherBloc>(
      () => UserDialogsOverviewWatcherBloc(g<IChatRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<ChatDialogBloc>(() => ChatDialogBloc(g<IChatRepository>()));
  g.registerFactory<DialogWatcherBloc>(
      () => DialogWatcherBloc(g<IChatRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
          g<Firestore>(),
        ));
    g.registerLazySingleton<IChatRepository>(
        () => ChatRepository(g<Firestore>()));
    g.registerLazySingleton<INotificationRepository>(
        () => NotificationRepository(g<Firestore>(), g<FirebaseMessaging>()));
    g.registerLazySingleton<IPostRepository>(
        () => PostRepository(g<Firestore>()));
    g.registerLazySingleton<IUserActorRepository>(
        () => UserActorRepository(g<Firestore>()));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
