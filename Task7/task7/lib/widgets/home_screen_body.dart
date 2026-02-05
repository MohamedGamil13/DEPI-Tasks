import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task7/app_images.dart';
import 'package:task7/models/product_model.dart';
import 'package:task7/widgets/custom_container.dart';
import 'package:task7/widgets/custom_sreach_bar.dart';
import 'package:task7/widgets/product_card.dart';
import 'package:task7/widgets/toggle_button.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  static const List<ProductModel> productesList = [
    ProductModel(
      image: AppImages.burgerMeal,
      name: 'Burger Meal',
      description: 'Double burger served with crispy fries and a cold drink.',
    ),
    ProductModel(
      image: AppImages.friedChicken,
      name: 'Fried Chicken',
      description: 'Golden crunchy chicken seasoned with our secret spices.',
    ),
    ProductModel(
      image: AppImages.pasta,
      name: 'Italian Pasta',
      description: 'Penne pasta with creamy white sauce and parmesan.',
    ),
    ProductModel(
      image: AppImages.pizza,
      name: 'Pizza',
      description: 'Traditional pizza with fresh tomato sauce and mozzarella.',
    ),
    ProductModel(
      image: AppImages.burger,
      name: ' Beef Burger',
      description: 'Juicy beef patty with fresh lettuce and melted cheese.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: CustomSreachBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: CarouselSlider(
            items: productesList
                .map((item) => CustomContainer(product: item))
                .toList(),
            options: CarouselOptions(
              height: 210,
              aspectRatio: 16 / 9,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 0.86,
              enlargeCenterPage: true,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: const Text(
            'Featured Items',
            style: TextStyle(fontSize: 20, fontWeight: .bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 35),
          child: ViewToggleButton(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: GridView.builder(
              itemCount: productesList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  productsList: productesList,
                  currentIndex: index,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
