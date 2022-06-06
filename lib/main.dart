import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // can make additions to final list, not const
    bringVeg(bag: true, rupees: 10);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // "/" means home route. Will clash with
      // line 15. So keep only one of the two.
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  bringVeg({required bool bag, int rupees = 100}) {
    // args in curly braces are by default optional
  }
}
