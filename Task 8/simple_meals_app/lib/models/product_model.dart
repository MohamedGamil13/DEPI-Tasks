class ProductModel {
  final String image;
  final String name;
  final String description;
  final bool isFavorite;
  final bool isInCart;
  final double price;
  final String size;
  final List<String> ingredients;
  const ProductModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.ingredients,
    this.isFavorite = false,
    this.isInCart = false,
    required this.size,
  });
}
