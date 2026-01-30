import 'package:flutter/material.dart';
import 'package:task6/constants.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(kprofileImage),
        ),
        Positioned(
          bottom: 4,
          right: 10,
          child: SizedBox(height: 24, child: Image.asset(kacceptIcon)),
        ),
      ],
    );
  }
}
