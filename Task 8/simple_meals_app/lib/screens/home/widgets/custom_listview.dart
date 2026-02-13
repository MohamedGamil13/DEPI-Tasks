import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/product_model.dart';
import 'package:simple_meals_app/screens/details/product_details_screen.dart';
import 'package:simple_meals_app/widgets/product_card.dart';

class CustomListview extends StatelessWidget {
  const CustomListview({super.key, required this.productesList});
  final List<ProductModel> productesList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: productesList.length,
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
