import 'package:flutter/material.dart';
import 'package:task_14/screens/widgets/home_screen_body.dart';

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
      body: const HomeScreenBody(),
    );
  }
}
