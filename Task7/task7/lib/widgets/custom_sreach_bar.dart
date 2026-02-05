import 'package:flutter/material.dart';

class CustomSreachBar extends StatelessWidget {
  const CustomSreachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 16),
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: Colors.red[800]),
          hintText: 'Search for food',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
