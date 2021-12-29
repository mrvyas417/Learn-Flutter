// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/Widget/drawer.dart';
import 'package:flutter_learn/Widget/item_widget.dart';
import 'package:flutter_learn/models/catalog.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  String name;
  Home(this.name, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    var CagtalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodejson = jsonDecode(CagtalogJson);
    final productData = decodejson["products"];
    List<Item> list = CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});

    log("this is our  $productData");
    print("calling");
  }

  @override
  Widget build(BuildContext context) {
    //final dummylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Text("E cart"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          child: Text(
                            item.name,
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                        ),
                        child: Image.network(item.image),
                        footer: Container(
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ));
                },
                itemCount: CatalogModel.items!.length,
              )
            //  ListView.builder(
            //     itemCount: CatalogModel.items!.length,
            //     itemBuilder: (context, index) {
            //       return ItemWidget(
            //         item: CatalogModel.items![index],
            //       );
            //     },
            //   )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
    );
  }
}
