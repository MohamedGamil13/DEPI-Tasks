import 'package:flutter/material.dart';
import 'package:task_14/screens/widgets/news_image.dart';

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
          return const ListTile(
            title: Text('Title'),
            subtitle: Text('data'),
            trailing: NewsImage(
              imageUrl:
                  'https://tse3.mm.bing.net/th/id/OIP.XumpG3c_dzDyL7TIgMlcYgHaE8?rs=1&pid=ImgDetMain&o=7&rm=3',
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
