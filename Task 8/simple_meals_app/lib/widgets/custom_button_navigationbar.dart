import 'package:flutter/material.dart';

class CustomButtonNavigationbar extends StatelessWidget {
  const CustomButtonNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFFE92C3C),
      items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Cart", icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
      ],
    );
  }
}
