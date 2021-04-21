class CartItemModel {
  static const ID = "id";
  static const IMAGE = "image";
  static const NAME = "name";
  static const QUANTITY = "quantity";
  static const PRICE = "cost";

  String id;
  String image;
  String name;
  String quantity;
  String cost;

  CartItemModel({this.id, this.image, this.name, this.quantity, this.cost});

  CartItemModel.fromMap(Map<String, dynamic> data){
    id = data[ID];
    image = data[IMAGE];
    name = data[NAME];
    quantity = data[QUANTITY];
    cost = data[PRICE];
  }

}