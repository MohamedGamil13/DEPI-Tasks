import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_image.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key, required this.newsModel});
  final Article newsModel;
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
        trailing: NewsImage(
          imageUrl:
              newsModel.urlToImage ??
              "https://th.bing.com/th?id=OIF.c9pLH%2bZSKu%2b%2fM7j4DU%2bxPw&rs=1&pid=ImgDetMain&o=7&rm=3",
        ),
      ),
    );
  }
}
