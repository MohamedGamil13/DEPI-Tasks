import 'package:flutter/material.dart';
import 'package:task7/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        title: Text(
          'Food Delivery',
          style: TextStyle(fontSize: 24, fontWeight: .bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: HomeScreenBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFE92C3C),
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
