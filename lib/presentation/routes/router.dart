import 'package:auto_route/auto_route_annotations.dart';

import '../pages/messaging/chat.dart';
import '../pages/messaging/dialog_overview_page.dart';
import '../pages/messaging/widgets/image_hero_widget.dart';
import '../pages/posts/post_form/post_form_page.dart';
import '../pages/posts/posts_overview/posts_overview.dart';
import '../pages/posts/posts_overview/widgets/detail_page_widget.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/sign_in/widgets/register_form.dart';
import '../pages/sign_in/widgets/reset_password_form.dart';
import '../pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  DetailPage detailPage;
  PostOverviewPage postsOverviewPage;
  @MaterialRoute(fullscreenDialog: true)
  RegisterFormPage registerForm;
  @MaterialRoute(fullscreenDialog: true)
  PostFormPage postFormPage;
  ResetPasswordPage resetPasswordPage;
  DialogOverviewPage dialogOverviewPage;
  ChatScreen chatScreen;
  @MaterialRoute(fullscreenDialog: true)
  ImageHeroPage imageHeroPage;
}
