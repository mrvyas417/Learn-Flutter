// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_learn/Widget/home_widgets/catalog_header.dart';

import 'package:flutter_learn/Widget/home_widgets/catalog_list.dart';

import 'package:flutter_learn/Widget/thems.dart';
import 'package:flutter_learn/models/catalog.dart';
import 'package:flutter_learn/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

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
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoutes);
          },
          backgroundColor: Mythem.darkBluishColor,
          child: Icon(CupertinoIcons.cart),
        ),
        backgroundColor: Mythem.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null &&
                    CatalogModel.items!.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
