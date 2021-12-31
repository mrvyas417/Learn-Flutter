import 'package:flutter/material.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  CatalogImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(Mythem.creamColor).make().p16().w40(context);
  }
}
