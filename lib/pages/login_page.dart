// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/LogIn_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),

              // ignore: prefer_const_constructors
              Text(
                "Welcome",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      },
                      style: TextButton.styleFrom(minimumSize: Size(120, 45)),
                      child: Text("Log In"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
