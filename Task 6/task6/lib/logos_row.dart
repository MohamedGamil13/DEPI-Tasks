import 'package:flutter/material.dart';
import 'package:task6/constants.dart';

class LogosRow extends StatelessWidget {
  const LogosRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Image.asset(xLogo, height: 40),
          Image.asset(facebookLogo, height: 40),
          Image.asset(googlePlusLogo, height: 40),
          Image.asset(behanceLogo, height: 40),
        ],
      ),
    );
  }
}
