import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppers_paradise/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.elliptical(15, 10)
        //   ),
        // ),
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 0,horizontal: 80),
            child: Text(
              "Shopper Paradise",
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ),
        ),
      // backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text("hello world I AM BACK AGAIN!!!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
