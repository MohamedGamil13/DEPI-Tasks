import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9EEFA),
      body: Center(
        child: const Text(
          'News',
          style: TextStyle(
            fontWeight: .w600,
            fontSize: 64,
            color: Color(0xff2D5BD0),
          ),
        ).animate().fade().scale(),
      ),
    );
  }
}
