import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double days = 30;
    var name = "Shumu";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome ${days} of ${name}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
