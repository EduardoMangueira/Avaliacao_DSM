import 'package:avaliacao_1/App/Features/View/home_page.dart';
import 'package:avaliacao_1/App/Features/View/login_page.dart';
import 'package:avaliacao_1/App/Features/View/signup_page.dart';
import 'package:avaliacao_1/App/Features/View/splash_page.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

abstract class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splash: (context) => SplashPage(),
    AppRoutes.login: (context) => LoginPage(),
    AppRoutes.signup: (context) => SignupPage(),
    AppRoutes.home: (context) => HomePage(),
  };
}
