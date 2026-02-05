import 'package:task7/app_images.dart';

class ProductModel {
  final String image;
  final String name;
  final String description;
  const ProductModel({
    required this.image,
    required this.name,
    required this.description,
  });
}

const List<ProductModel> productesList = [
  ProductModel(
    image: AppImages.burger,
    name: 'Burger',
    description: 'hot meal',
  ),
  ProductModel(
    image: AppImages.burgerMeal,
    name: 'BurgerMeal',
    description: 'hot meal',
  ),
  ProductModel(
    image: AppImages.friedChicken,
    name: 'friedChicken',
    description: 'hot meal',
  ),
  ProductModel(image: AppImages.pasta, name: 'pasta', description: 'hot meal'),
  ProductModel(image: AppImages.pizza, name: 'pizza', description: 'hot meal'),
];
