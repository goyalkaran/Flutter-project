import 'package:flutter/material.dart';
import 'package:shoppers_paradise/util/routes.dart';
import 'package:shoppers_paradise/view/homepage.dart';
import 'package:shoppers_paradise/view/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppers_paradise/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );

  }
}
