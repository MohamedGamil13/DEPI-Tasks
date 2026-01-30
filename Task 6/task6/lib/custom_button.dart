import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 60,
        width: MediaQuery.widthOf(context) - 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            'View Profile',
            style: TextStyle(fontSize: 24, color: Colors.grey[600]),
          ),
        ),
      ),
    );
  }
}
