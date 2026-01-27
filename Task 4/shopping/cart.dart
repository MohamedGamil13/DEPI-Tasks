import '../products/product.dart';
import '../users/customer.dart';

class Cart {
  final Customer customer;
  final List<Map<Product, int>> items;

  Cart({required this.customer, required this.items});

  void addItem(Product item, int quantity) {
    if (quantity < 1) {
      print('Invalid quantity');
      return;
    }

    if (!isAvailable(item)) {
      items.add({item: quantity});
    } else {
      int index = getProductIndex(item);
      items[index][item] = items[index][item]! + quantity;
    }
  }

  // Remove item
  void removeItem(Product item) {
    if (!isAvailable(item)) {
      print('Item not found');
      return;
    }

    int index = getProductIndex(item);
    int currentQty = items[index][item]!;

    if (currentQty > 1) {
      items[index][item] = currentQty - 1;
    } else {
      items.removeAt(index);
    }
  }

  double getTotal() {
    double total = 0;

    for (var map in items) {
      Product product = map.keys.first;
      int quantity = map.values.first;

      total += product.price * quantity;
    }
    return total;
  }

  bool isAvailable(Product product) {
    return getProductIndex(product) != -1;
  }

  int getProductIndex(Product product) {
    return items.indexWhere((map) => map.containsKey(product));
  }
}
