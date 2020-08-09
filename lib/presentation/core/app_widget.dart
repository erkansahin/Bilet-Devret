import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../app_localizations.dart';
import '../../application/auth/auth_bloc.dart';
import '../../application/auth/user_details_watcher/user_details_watcher_bloc.dart';
import '../../application/notification/notification_bloc.dart';
import '../../application/post/post_actor/post_actor_bloc.dart';
import '../../application/user_actor/user_actor_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<NotificationBloc>()
            ..add(const NotificationEvent.initialize()),
        ),
        BlocProvider<UserDetailsWatcherBloc>(
            create: (context) => getIt<UserDetailsWatcherBloc>()),
        BlocProvider<UserActorBloc>(
            create: (context) => getIt<UserActorBloc>()),
        BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>()),
      ],
      child: MaterialApp(
        title: 'Bilet devret',
        debugShowCheckedModeBanner: false,
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('tr', 'TR'),
        ],

        localizationsDelegates: const [
          // THIS CLASS WILL BE ADDED LATER
          // A class which loads the translations from JSON files
          AppLocalizations.delegate,
          // Built-in localization of basic text for Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built-in localization for text direction LTR/RTL
          GlobalWidgetsLocalizations.delegate,
        ],
        // Returns a locale which will be used by the app
        localeResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported
          for (final supportedLocale in supportedLocales) {
            
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          // If the locale of the device is not supported, use the first one
          // from the list (English, in this case).
          return supportedLocales.first;
        },
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: Colors.green[800],
                iconTheme: ThemeData.dark().iconTheme,
              ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        builder: ExtendedNavigator<Router>(router: Router()),
      ),
    );
  }
}
