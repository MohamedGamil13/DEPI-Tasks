import 'package:flutter/material.dart';
import 'package:task_14/screens/widgets/news_image.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Title'),
      subtitle: Text('data'),
      trailing: NewsImage(
        imageUrl:
            'https://tse3.mm.bing.net/th/id/OIP.XumpG3c_dzDyL7TIgMlcYgHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
      ),
    );
  }
}
