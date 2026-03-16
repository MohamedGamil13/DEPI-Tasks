import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({super.key, required this.imageUrl, this.height, this.width});
  final String? imageUrl;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl ??
                "https://th.bing.com/th?id=OIF.c9pLH%2bZSKu%2b%2fM7j4DU%2bxPw&rs=1&pid=ImgDetMain&o=7&rm=3",
          ),
          fit: .cover,
        ),
      ),
    );
  }
}
