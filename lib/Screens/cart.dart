import 'package:flutter/material.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mythem.creamColor,
      appBar: AppBar(
        backgroundColor: Mythem.creamColor,
        title: "Cart".text.color(Mythem.darkBluishColor).make(),
        centerTitle: true,
      ),
    );
  }
}
