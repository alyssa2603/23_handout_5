import 'package:flutter/material.dart';
import '../model/item.dart';

class ShoppingCart with ChangeNotifier {
  final List<Item> _shoppingList = [];
  double cartTotal = 0;
  List<Item> get cart => _shoppingList;

  void addItem(Item item) {
    _shoppingList.add(item);
    cartTotal = cartTotal + item.price;
    notifyListeners();
  }

  void removeAll() {
    _shoppingList.clear();
    cartTotal = 0;
    notifyListeners();
  }

  void removeItem(int i) {
    Item removed = _shoppingList.removeAt(i);
    cartTotal -= removed.price;
    notifyListeners();
  }
}
