import 'package:flutter/material.dart';
import 'package:flutter_learn/Widget/thems.dart';
import 'package:flutter_learn/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;
  const HomeDetail({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mythem.creamColor,
      ),
      backgroundColor: Mythem.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Mythem.darkBluishColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Add to Cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            VxArc(
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              height: 30.0,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(Mythem.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl.make(),
                    10.heightBox,
                    "The velvet shaven till nothing tapping forgiveness whose mortals this. The his radiant sat soon devil only the a, before of undaunted fast but floor plainly my angels but, utters plutonian door aptly a lenore door into heard. Sculptured door."
                        .text
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ).expand()
          ],
        ),
      ),
    );
  }
}
