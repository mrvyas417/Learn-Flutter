import 'package:flutter/material.dart';
import 'package:flutter_learn/Screens/home_detail.dart';
import 'package:flutter_learn/Widget/home_widgets/catalog_item.dart';
import 'package:flutter_learn/models/catalog.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetail(catalog: catalog)));
          },
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
