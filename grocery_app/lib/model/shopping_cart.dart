import 'package:flutter/material.dart';

class ShoppingCart extends ChangeNotifier {
  //what are the list of items;
  final List items = [
    //itemname
    //itemprice
    //iamhepath
    //bgcolor
    //now we will create the list of items
    ["avocado", "230.00", "assets/avocado.png", Colors.green],
    ["banana", "150.00", "assets/banana.png", Colors.yellow],
    ["chicken", "270.00", "assets/chicken.png", Colors.brown],
    ["water", "70.00", "assets/water.png", Colors.blue],
  ];

  //noiw create the getter method to keep the data protected
  List get shopItems => items;

  //items in the cart
  final List cart = [];

  //getter method to keep the data protected
  List get _cartitems => cart;

  //addding item to the cart
  void additemtoCart(int index) {
    cart.add(items[index]);
    notifyListeners();
  }

  //removing item from the cart
  void removefromCart(int index) {
    cart.remove(items[index]);
    notifyListeners();
  }

  //calculate the total price of the items in the cart
  String TotalAmount() {
    double totalAmount = 0;
    for (var i = 0; i < cart.length; i++) {
      totalAmount += double.parse(cart[i][1]);
    }
    return totalAmount.toString();
  }
}
