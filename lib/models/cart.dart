import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/models/coffe.dart';

class Cart extends ChangeNotifier {
  List<coffe> coffeshop = [
    coffe(name: 'Machiato', price: '25k', imagePath: 'logo.png', rating: '4.8'),
    coffe(name: 'Latte', price: '20k', imagePath: 'logo.png', rating: '4.4'),
    coffe(
        name: 'Americano', price: '22k', imagePath: 'logo.png', rating: '3.8'),
    coffe(name: 'Milk', price: '15k', imagePath: 'logo.png', rating: '4.7'),
  ];

  List<coffe> userCart = [];

  List<coffe> getCoffeList() {
    return coffeshop;
  }

  List<coffe> getUserCart() {
    return userCart;
  }

  void addItemtoCart(coffe Coffe) {
    userCart.add(Coffe);
    notifyListeners();
  }

  void removeItemtoCart(coffe Coffe) {
    userCart.remove(Coffe);
    notifyListeners();
  }
}
