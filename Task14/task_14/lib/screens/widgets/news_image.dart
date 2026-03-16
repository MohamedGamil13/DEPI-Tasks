import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: NetworkImage(imageUrl), fit: .cover),
      ),
    );
  }
}
