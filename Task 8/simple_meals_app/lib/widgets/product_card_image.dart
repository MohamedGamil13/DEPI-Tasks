import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key, required this.image, this.height});
  final String image;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 120,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: .cover),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
