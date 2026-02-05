import 'package:flutter/material.dart';
import 'package:task7/models/product_model.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Expanded(
          child: Container(
            // height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: .cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            product.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xFF1F2937),
              letterSpacing: 0.5,
              fontFamily: 'Inter',
            ),
          ),
        ),
      ],
    );
  }
}
