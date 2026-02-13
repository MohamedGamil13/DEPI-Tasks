import 'package:simple_meals_app/constants/app_images.dart';
import 'package:simple_meals_app/models/cart_item.dart';
import 'package:simple_meals_app/models/product_model.dart';

const List<ProductModel> productesList = [
  ProductModel(
    image: AppImages.burgerMeal,
    name: 'Burger Meal',
    size: 'Large',
    description: 'Double burger served with crispy fries and a cold drink.',
    price: 12.99,
    ingredients: ['Beef Patty', 'Cheddar', 'Lettuce', 'Tomato'],
  ),
  ProductModel(
    image: AppImages.friedChicken,
    name: 'Fried Chicken',
    size: 'Medium',
    description: 'Golden crunchy chicken seasoned with our secret spices.',
    price: 9.99,
    ingredients: ['Chicken', 'Flour', 'Spices', 'Oil'],
  ),
  ProductModel(
    image: AppImages.pasta,
    name: 'Italian Pasta',
    size: 'Regular',
    description: 'Penne pasta with creamy white sauce and parmesan.',
    price: 11.50,
    ingredients: ['Penne', 'Cream', 'Parmesan', 'Garlic'],
  ),
  ProductModel(
    image: AppImages.pizza,
    name: 'Pizza',
    size: 'Large', // Added size
    description: 'Traditional pizza with fresh tomato sauce and mozzarella.',
    price: 14.99,
    ingredients: ['Dough', 'Tomato Sauce', 'Mozzarella', 'Basil'],
  ),
  ProductModel(
    image: AppImages.burger,
    name: 'Beef Burger',
    size: 'Medium',
    description: 'Juicy beef patty with fresh lettuce and melted cheese.',
    price: 10.50,
    ingredients: ['Beef Patty', 'Lettuce', 'Cheddar', 'Pickles'],
  ),
];
final List<CartItem> cartitems = [
  CartItem(
    image: AppImages.burgerMeal,
    name: 'Burger Meal',
    size: 'Large',
    price: 12.99,
    quantity: 1,
    description: 'Double burger served with crispy fries and a cold drink.',
    ingredients: ['Beef Patty', 'Cheddar', 'Lettuce', 'Tomato'],
  ),
  CartItem(
    image: AppImages.friedChicken,
    name: 'Fried Chicken',
    size: 'Medium',
    price: 9.99,
    quantity: 2,
    description: 'Golden crunchy chicken seasoned with our secret spices.',
    ingredients: ['Chicken', 'Flour', 'Spices', 'Oil'],
  ),
];
//i assumed that Two cart items has added brfore by user
