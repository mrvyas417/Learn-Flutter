// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_learn/models/catalog.dart';

class CartModel {
  //catalog filed
  late CatalogModel _catalog;

  //collection of IDs

  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  //set catalog
  set catalog(CatalogModel newcatalog) {
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

  //get item in cart
  List<Item> get x => _itemIds.map((id) => _catalog.getById(id)).toList();

  //total price
  num get totalPrice => x.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
