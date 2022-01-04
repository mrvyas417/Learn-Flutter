// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_learn/models/cart.dart';
import 'package:flutter_learn/models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(
      context,
      on: [AddMutation, RemoveMutation],
    );
    final CartModel _cart = (VxState.store as MyStore).cartmodel;

    bool isInCart = _cart.x.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: "Item already added In Cart".text.make()));
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
