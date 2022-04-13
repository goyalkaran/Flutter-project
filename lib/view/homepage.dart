import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shoppers_paradise/models/catalog.dart';
import 'package:shoppers_paradise/widgets/drawer.dart';
import 'package:shoppers_paradise/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    final catJson = await rootBundle.loadString("assets/files/catalog.json");
    final decData= jsonDecode(catJson);
    var proData = decData["products"];
    print(proData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(100, (index) => CatalogModel().items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 80),
          child: Text(
            "Shopper Paradise",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      // backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
