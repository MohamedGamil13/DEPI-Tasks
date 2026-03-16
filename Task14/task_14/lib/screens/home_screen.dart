import 'package:flutter/material.dart';
import 'package:task_14/models/news_model.dart';
import 'package:task_14/screens/widgets/news_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News',
          style: TextStyle(fontWeight: .w600, fontSize: 32),
        ),
        centerTitle: false,
        backgroundColor: const Color(0xffE9EEFA),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return NewsListTile(
            newsModel: NewsModel(
              title: 'title',
              subtitle: 'subtitle',
              image:
                  'https://images.pexels.com/photos/9765160/pexels-photo-9765160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              author: '',
            ),
          );
        },
      ),
    );
  }
}

// font-family: Inter;
// font-weight: 600;
// font-style: Semi Bold;
// font-size: 32px;
// leading-trim: NONE;
// line-height: 40px;
// letter-spacing: 0%;
