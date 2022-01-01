import 'package:flutter/material.dart';
import 'package:shoppers_paradise/view/homepage.dart';
import 'package:shoppers_paradise/view/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          // primarySwatch: Colors.amber,
          ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/Home": (context) => HomePage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
