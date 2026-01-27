import 'product.dart';

class ElectronicProduct extends Product {
  final DateTime warrantyPeriod;

  ElectronicProduct({
    required super.id,
    required super.name,
    required super.description,
    required super.price,
    required this.warrantyPeriod,
  });

  @override
  productDetailFormatting() {
    String formatedDetails =
        "Name : $name \n ID : $id \n Price : $price \nWarranty Period : $warrantyPeriod \n Description : $description";
    return formatedDetails;
  }
}
