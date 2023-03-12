import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final double days = 35;
  final String name = "Amit Gupta";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Helllo Roll - $days Mr $name "),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
