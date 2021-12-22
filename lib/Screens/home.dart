// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Widget/drawer.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String name;
  Home(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueGrey,
        title: Text("Ciao!! "),
        centerTitle: true,
      ),
      body: Center(
        child: Text(name),
      ),
      drawer: Mydrawer(),
    );
  }
}
