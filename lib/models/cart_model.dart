import 'package:flutter_30days/core/store.dart';
import 'package:flutter_30days/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
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
}

class AddMutation extends VxMutation <MyStore>{
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation <MyStore>{
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store.cart._itemIds.remove(item.id);
  }
}
