import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final full = index < rating.floor();
        final half = !full && index < rating;
        return Icon(
          full
              ? Icons.star
              : half
              ? Icons.star_half
              : Icons.star_border,
          color: const Color(0xFFFFC107),
          size: 18,
        );
      }),
    );
  }
}
