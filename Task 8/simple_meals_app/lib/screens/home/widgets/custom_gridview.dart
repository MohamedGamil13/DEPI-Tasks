import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/product_model.dart';
import 'package:simple_meals_app/screens/details/product_details_screen.dart';
import 'package:simple_meals_app/widgets/product_card.dart';

class CustomGridview extends StatelessWidget {
  const CustomGridview({super.key, required this.productesList});
  final List<ProductModel> productesList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productesList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.65,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetailsScreen(product: productesList[index]),
              ),
            );
          },
          child: ProductCard(productsList: productesList, currentIndex: index),
        );
      },
    );
  }
}
