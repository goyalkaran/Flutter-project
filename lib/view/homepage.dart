import 'package:flutter/material.dart';
import 'package:shoppers_paradise/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        backgroundColor: Colors.teal.shade400,
      ),
      body: Center(
        child: Container(
          child: Text("hello world I AM BACK AGAIN!!!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
