import 'package:flutter/material.dart';

class RestaurantHeader extends StatelessWidget {
  const RestaurantHeader({
    super.key,
    required this.name,
    required this.itemCount,
  });
  final String name;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //the Icon
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: const Color(0xFFF3F4F6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.store, color: Color(0xFF1F2937), size: 24),
        ),
        const SizedBox(width: 12),
        //text
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
            Text(
              '$itemCount items',
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
