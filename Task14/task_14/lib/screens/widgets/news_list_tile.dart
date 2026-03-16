import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_image.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(newsModel.title),
        subtitle: Text(newsModel.subtitle),
        trailing: NewsImage(imageUrl: newsModel.image),
      ),
    );
  }
}
