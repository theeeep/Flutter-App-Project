// ignore_for_file: prefer_const_constructors

import 'package:basic_app/pages/login_page.dart';
import 'package:basic_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,  //! To hide debug badge
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
