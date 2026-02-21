import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});

  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppContants.kpraimaryColor,
          foregroundColor: Colors.white,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
