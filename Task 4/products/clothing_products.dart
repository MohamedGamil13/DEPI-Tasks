import 'product.dart';

class ClothingProduct extends Product {
  final String size;

  ClothingProduct({
    required super.id,
    required super.name,
    required super.description,
    required super.price,
    required this.size,
  });

  @override
  productDetailFormatting() {
    String formatedDetails =
        "Name : $name \n ID : $id \n Price : $price \nSize : $size \n Description : $description";
    return formatedDetails;
  }
}
