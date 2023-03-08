// ignore_for_file: prefer_const_constructors

import 'package:basic_app/pages/login_page.dart';
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
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      initialRoute: "/",
      routes: {
        // "/": (context) => LogInPage(),
        "/": (context) => HomePage(),
        "home": (context) => HomePage(),
        "/login": (context) => LogInPage(),
      },
    );
  }
}
