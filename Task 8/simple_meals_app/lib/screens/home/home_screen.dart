import 'package:flutter/material.dart';
import 'package:simple_meals_app/screens/home/widgets/home_screen_body.dart';
import 'package:simple_meals_app/widgets/custom_appbar.dart';
import 'package:simple_meals_app/widgets/custom_button_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: CustomAppbar(
        pagetitle: 'Food Delivery',
        pageIcon: Icons.shopping_cart,
      ),
      body: HomeScreenBody(),
      bottomNavigationBar: CustomButtonNavigationbar(),
    );
  }
}
