import 'package:simple_meals_app/models/product_model.dart';

class CartItem extends ProductModel {
  int quantity;

  CartItem({
    required this.quantity,
    required super.description,
    required super.ingredients,
    required super.image,
    required super.name,
    required super.price,
    required super.size,
  });
}
