import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_image.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({
    super.key,
    required this.article,
    required this.heroTag,
  });
  final Article article;
  final int heroTag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: '$heroTag',
            child: NewsImage(imageUrl: article.urlToImage),
          ),
        ],
      ),
    );
  }
}
