// ignore_for_file: prefer_const_constructors

import 'package:basic_app/pages/login_page.dart';
import 'package:basic_app/utils/routes.dart';
import 'package:basic_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false, //! To hide debug badge
      initialRoute: MyRoute.homeRoute,
      routes: {
        // "/": (context) => LogInPage(),
        "/": (context) => LogInPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.logInRoute: (context) => LogInPage(),
      },
    );
  }
}
