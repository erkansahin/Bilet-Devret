// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bilet_devret/presentation/pages/splash/splash_page.dart';
import 'package:bilet_devret/presentation/pages/sign_in/sign_in_page.dart';
import 'package:bilet_devret/presentation/pages/posts/posts_overview/widgets/detail_page_widget.dart';
import 'package:bilet_devret/domain/posts/post.dart';
import 'package:bilet_devret/presentation/pages/posts/posts_overview/posts_overview.dart';
import 'package:bilet_devret/presentation/pages/sign_in/widgets/register_form.dart';
import 'package:bilet_devret/presentation/pages/posts/post_form/post_form_page.dart';
import 'package:bilet_devret/presentation/pages/sign_in/widgets/reset_password_form.dart';
import 'package:bilet_devret/presentation/pages/messaging/dialog_overview_page.dart';
import 'package:bilet_devret/presentation/pages/messaging/chat.dart';
import 'package:bilet_devret/domain/core/value_objects.dart';
import 'package:bilet_devret/presentation/pages/messaging/widgets/image_hero_widget.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const detailPage = '/detail-page';
  static const postsOverviewPage = '/posts-overview-page';
  static const registerForm = '/register-form';
  static const postFormPage = '/post-form-page';
  static const resetPasswordPage = '/reset-password-page';
  static const dialogOverviewPage = '/dialog-overview-page';
  static const chatScreen = '/chat-screen';
  static const imageHeroPage = '/image-hero-page';
  static const all = {
    splashPage,
    signInPage,
    detailPage,
    postsOverviewPage,
    registerForm,
    postFormPage,
    resetPasswordPage,
    dialogOverviewPage,
    chatScreen,
    imageHeroPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.detailPage:
        if (hasInvalidArgs<DetailPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<DetailPageArguments>(args);
        }
        final typedArgs = args as DetailPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              DetailPage(key: typedArgs.key, post: typedArgs.post)
                  .wrappedRoute(context),
          settings: settings,
        );
      case Routes.postsOverviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PostOverviewPage().wrappedRoute(context),
          settings: settings,
        );
      case Routes.registerForm:
        if (hasInvalidArgs<RegisterFormPageArguments>(args)) {
          return misTypedArgsRoute<RegisterFormPageArguments>(args);
        }
        final typedArgs =
            args as RegisterFormPageArguments ?? RegisterFormPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => RegisterFormPage(key: typedArgs.key),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.postFormPage:
        if (hasInvalidArgs<PostFormPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<PostFormPageArguments>(args);
        }
        final typedArgs = args as PostFormPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => PostFormPage(
              key: typedArgs.key, editedPost: typedArgs.editedPost),
          settings: settings,
          fullscreenDialog: true,
        );
      case Routes.resetPasswordPage:
        if (hasInvalidArgs<ResetPasswordPageArguments>(args)) {
          return misTypedArgsRoute<ResetPasswordPageArguments>(args);
        }
        final typedArgs =
            args as ResetPasswordPageArguments ?? ResetPasswordPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ResetPasswordPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.dialogOverviewPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => DialogOverviewPage().wrappedRoute(context),
          settings: settings,
        );
      case Routes.chatScreen:
        if (hasInvalidArgs<ChatScreenArguments>(args)) {
          return misTypedArgsRoute<ChatScreenArguments>(args);
        }
        final typedArgs = args as ChatScreenArguments ?? ChatScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              ChatScreen(key: typedArgs.key, otherUserID: typedArgs.otherUserID)
                  .wrappedRoute(context),
          settings: settings,
        );
      case Routes.imageHeroPage:
        if (hasInvalidArgs<ImageHeroPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ImageHeroPageArguments>(args);
        }
        final typedArgs = args as ImageHeroPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ImageHeroPage(typedArgs.tag, typedArgs.url),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//DetailPage arguments holder class
class DetailPageArguments {
  final Key key;
  final Post post;
  DetailPageArguments({this.key, @required this.post});
}

//RegisterFormPage arguments holder class
class RegisterFormPageArguments {
  final Key key;
  RegisterFormPageArguments({this.key});
}

//PostFormPage arguments holder class
class PostFormPageArguments {
  final Key key;
  final Post editedPost;
  PostFormPageArguments({this.key, @required this.editedPost});
}

//ResetPasswordPage arguments holder class
class ResetPasswordPageArguments {
  final Key key;
  ResetPasswordPageArguments({this.key});
}

//ChatScreen arguments holder class
class ChatScreenArguments {
  final Key key;
  final UniqueId otherUserID;
  ChatScreenArguments({this.key, this.otherUserID});
}

//ImageHeroPage arguments holder class
class ImageHeroPageArguments {
  final String tag;
  final String url;
  ImageHeroPageArguments({@required this.tag, @required this.url});
}
