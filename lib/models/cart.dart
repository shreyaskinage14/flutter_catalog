import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // catalog field
  late CatalogModel _catalog;

// collection if ids - stored ids of each item
  final List<dynamic> _itemsIds = [];

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemsIds.map((e) => _catalog.getById(e)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item

  void add(Item item) {
    _itemsIds.add(item.id);
  }

  // remove item
  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  late final Item item;

  AddMutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart?._itemsIds.add(item.id);
  }
}
