import 'package:flutter_learn/models/cart.dart';
import 'package:flutter_learn/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cartmodel;
  MyStore() {
    catalog = CatalogModel();
    cartmodel = CartModel();
    cartmodel.catalog = catalog;
  }
}
