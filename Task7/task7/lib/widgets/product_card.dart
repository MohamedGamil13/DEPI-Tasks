import 'package:flutter/material.dart';
import 'package:task7/models/product_model.dart';
import 'package:task7/widgets/product_card_image.dart';
import 'package:task7/widgets/text_container.dart';

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
    return Container(
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
                child: ProductCardImage(
                  image: productsList[currentIndex].image,
                ),
              ),
            ),
            Text(
              productsList[currentIndex].name,
              style: TextStyle(fontSize: 18, fontWeight: .bold),
            ),
            Text(
              productsList[currentIndex].description,
              style: TextStyle(fontSize: 14, color: Colors.grey),
              overflow: .ellipsis,
            ),
            SizedBox(height: 8),
            TextContainer(),
          ],
        ),
      ),
    );
  }
}
