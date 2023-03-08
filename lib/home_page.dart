import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double days = 31;
  final String name = "Amit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Helllo Roll - $days Mff's $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
