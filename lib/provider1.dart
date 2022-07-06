import 'package:flutter/cupertino.dart';

class Provider1 extends ChangeNotifier {
  int? foodCount = 0;
  int? get FoodCount {
    return foodCount;
  }

  List<ItemModel> items = [
    ItemModel(
      itemname: 'Bonless Chicken',
      description: 'This is a boneless chickhen',
      images: "assets/images/Boneless_Chicken.png",
      qty: 0,
      price: 25.00,
    ),
    ItemModel(
      itemname: 'Whole bird with skin',
      description: 'This is a Whole bird with skin',
      images: "assets/images/Whole_bird_with_screen.png",
      qty: 0,
      price: 125.00,
    ),
    ItemModel(
      itemname: 'Bonless Chicken',
      description: 'This is a boneless chickhen',
      images: "assets/images/Boneless_Chicken.png",
      qty: 0,
      price: 25.00,
    ),
    ItemModel(
      itemname: 'Bonless Chicken',
      description: 'This is a boneless chickhen',
      images: "assets/images/Boneless_Chicken.png",
      qty: 0,
      price: 25.00,
    ),
  ];
  List<ItemModel> get Items {
    return items;
  }

  int get selectedItems {
    int selected = 0;
    Items.forEach((element) {
      selected += element.qty;
    });
    return selected;
  }

  double get totalAmount {
    double total = 0;
    Items.forEach((element) {
      total += element.qty.toDouble() * element.price;
    });
    return total;
  }

  void increaseqty(int index) {
    items[index].qty++;
    notifyListeners();
  }

  void decreaseqty(int index) {
    items[index].qty--;
    notifyListeners();
  }

  List<String> images = [
    "assets/images/Boneless_Chicken.png",
    "assets/images/Whole_bird_with_screen.png",
    "assets/images/Whole_bird_with_screen.png",
    "assets/images/Whole_bird_with_screen.png",
  ];
  List<String> get Images {
    return images;
  }

  List<double> price = [
    25.00,
    125.00,
    25.00,
    25.00,
  ];
  List<double> get Price {
    return price;
  }

  // void changelist() {
  //   items = [
  //     'Boneless Chicken',
  //     'Whole Bird with skin',
  //     'Boneless Chicken',
  //     'Boneless Chicken',
  //   ];
  //   notifyListeners();
  // }
}

class ItemModel {
  String itemname, description, images;
  int qty;
  double price;
  ItemModel(
      {required this.itemname,
      required this.description,
      required this.images,
      required this.qty,
      required this.price});
}
