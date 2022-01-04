// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/core/store.dart';

import 'package:flutter_learn/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cartmodel;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: "Buying option not avilable yet".text.make()));
            },
            child: "buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cartmodel;
    return _cart.x.isEmpty
        ? " Cart is empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.x.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              enabled: true,
              trailing: IconButton(
                icon: Icon(CupertinoIcons.minus_circle),
                onPressed: () {
                  _cart.remove(_cart.x[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: "Item removed From Cart".text.make()));
                  //setState(() {});
                },
              ),
              title: _cart.x[index].name.text.make(),
            ),
          );
  }
}
