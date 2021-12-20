import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  String name;
  Home(this.name);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Ciao!! "),
          centerTitle: true,
        ),
        body: Center(
          child: Text(name),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
