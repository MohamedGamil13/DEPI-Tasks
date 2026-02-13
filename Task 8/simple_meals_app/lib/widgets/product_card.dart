import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/product_model.dart';
import 'package:simple_meals_app/screens/home/widgets/text_container.dart';
import 'package:simple_meals_app/widgets/product_card_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productsList,
    required this.currentIndex,
  });
  final List<ProductModel> productsList;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: productsList[currentIndex].name,
                    child: ProductCardImage(
                      image: productsList[currentIndex].image,
                    ),
                  ),
                ),
              ),
              Text(
                productsList[currentIndex].name,
                style: const TextStyle(fontSize: 18, fontWeight: .bold),
              ),
              Text(
                productsList[currentIndex].description,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
                overflow: .ellipsis,
              ),
              const SizedBox(height: 8),
              const TextContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
