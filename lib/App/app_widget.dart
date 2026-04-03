import 'package:avaliacao_1/App/Routes/app_pages.dart';
import 'package:avaliacao_1/App/Routes/app_routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash-Login',
      initialRoute: AppRoutes.splash,
      routes: AppPages.routes,
    );
  }
}
