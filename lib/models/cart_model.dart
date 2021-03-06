import 'package:flutter_30days/models/catalog.dart';

class CartModel {
  //catalog field
  CatalogModel _catalog;

//collections of ids - store ids of each item
  final List<int> _itemIds = [];

//get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog) {
    assert(newcatalog != null);
    _catalog = newcatalog;
  }
  //get items in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price\

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add tem

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
