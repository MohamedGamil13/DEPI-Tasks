import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_datails_card_content.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: '$heroTag',
                    child: NewsImage(
                      imageUrl: article.urlToImage,
                      width: double.infinity,
                      height: 220,
                    ),
                  ),
                  NewsDatailsCardContent(article: article),
                ],
              ),
            ),
            const Positioned(top: 12, left: 12, child: BackButton()),
          ],
        ),
      ),
    );
  }
}
