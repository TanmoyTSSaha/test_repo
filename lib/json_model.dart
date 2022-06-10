class Food {
  List<FoodModel>? foods;

  Food({this.foods});

  Food.fromJson(Map<String, dynamic> json) {
    if (json['foods'] != null) {
      foods = <FoodModel>[];
      json['foods'].forEach((v) {
        foods!.add(FoodModel.fromJson(v));
      });
    }
  }
}

class FoodModel {
  int? id;
  String? name;
  String? description;
  int? price;
  String? img;

  FoodModel({this.id, this.name, this.description, this.price, this.img});

  FoodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    img = json['img'];
  }
}
