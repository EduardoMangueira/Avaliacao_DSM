import 'package:avaliacao_1/App/Features/View/home_page.dart';
import 'package:avaliacao_1/App/Features/View/login_page.dart';
import 'package:avaliacao_1/App/Features/View/signup_page.dart';
import 'package:avaliacao_1/App/Features/View/splash_page.dart';
import 'package:flutter/material.dart';

// lib/main.dart
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
      },
    ),
  );
}
