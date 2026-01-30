import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key, required this.title, required this.des});
  final String title;
  final String des;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 18, color: Colors.grey[600])),
        Text(des, style: TextStyle(fontSize: 24, fontWeight: .w500)),
      ],
    );
  }
}
