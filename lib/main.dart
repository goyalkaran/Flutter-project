import 'package:flutter/material.dart';
import 'package:shoppers_paradise/util/routes.dart';
import 'package:shoppers_paradise/view/homepage.dart';
import 'package:shoppers_paradise/view/loginpage.dart';
import 'package:shoppers_paradise/widgets/theme.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _firebaseApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => FutureBuilder(
              future: _firebaseApp,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print('error hai!! ${snapshot.error.toString()}');
                  return Text('kuch toh gadbad h');
                } else if (snapshot.hasData) {
                  return LoginPage();
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      // home: FutureBuilder(
      //   future: _firebaseApp,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasError) {
      //       print('error hai!! ${snapshot.error.toString()}');
      //       return Text('kuch toh gadbad h');
      //     } else if (snapshot.hasData) {
      //       return (routes: {
      //
      //     "/": (context) => LoginPage(),
      //     MyRoutes.homeRoute: (context) => HomePage(),
      //     MyRoutes.loginRoute: (context) => LoginPage(),
      //     });
      //     } else {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),
      // routes: {
      //
      //   "/": (context) => LoginPage(),
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      // },
    );
  }
}
