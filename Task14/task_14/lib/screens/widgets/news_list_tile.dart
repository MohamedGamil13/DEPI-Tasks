import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_image.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({
    super.key,
    required this.newsModel,
    required this.herotag,
  });
  final Article newsModel;
  final int herotag;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          newsModel.title ?? "No Title found",
          maxLines: 2,
          overflow: .ellipsis,
        ),
        subtitle: Text(newsModel.content!, maxLines: 2, overflow: .ellipsis),
        trailing: Hero(
          tag: '$herotag',
          child: NewsImage(imageUrl: newsModel.urlToImage),
        ),
      ),
    );
  }
}
