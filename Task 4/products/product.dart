abstract class Product {
  final int id;
  final String name;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });
  String productDetailFormatting();
}





// 1. Product  
// • Defines common product attributes (id, name, price, description) done
// • Establishes standard product detail formatting (an abstract method)  done
// 2. Electronic Product: Specialized product for electronics with (Warranty period) 
// 3. Clothing Product: with (available size) 