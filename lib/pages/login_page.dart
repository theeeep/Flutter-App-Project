// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;
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
                "Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 2));
                        Navigator.pushNamed(context, MyRoute.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: changeButton ? 50 : 120,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 10),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoute.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 45)),
                    //   child: Text("Log In"),
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
