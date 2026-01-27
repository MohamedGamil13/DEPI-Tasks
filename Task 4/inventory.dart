import 'products/product.dart';
import 'users/admin.dart';

class Inventory {
  final Admin admin;
  final List<Map<Product, int>> stock;
  final quententy = 0;

  Inventory({required this.admin, required this.stock});

  void addProduct(Product product, int quentity) {
    if (quentity < 1) {
      print('Invalid quentity ');
      return;
    }

    if (!isAvailalbe(product)) {
      stock.add({product: quentity});
    } else {
      int index = getProductIndex(product);
      stock[index][product] = stock[index][product]! + quentity;
      // I put  !   because i'm sure that quentity will be at least 1 and product is exist
    }
  }

  bool isAvailalbe(Product product) {
    int existFlag = getProductIndex(product);
    if (existFlag == -1) {
      return false;
    }
    return true;
  }

  void updateStock(Product product, int newQuantity) {
    int index = getProductIndex(product);

    if (index == -1) {
      print('Product not found in stock');
      return;
    }

    stock[index][product] = newQuantity;
  }

  int getProductIndex(Product product) {
    int index = stock.indexWhere((map) => map.containsKey(product));
    return index;
  }
}
 



  // final int id;
  // final String name;
  // final String description;
  // final double price;
