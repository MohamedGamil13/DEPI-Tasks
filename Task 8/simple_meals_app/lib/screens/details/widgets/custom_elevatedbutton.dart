import 'package:flutter/material.dart';
import 'package:simple_meals_app/constants/dummy_data.dart';
import 'package:simple_meals_app/screens/cart/cart_screen.dart';

class CustomElevatedbutton extends StatelessWidget {
  const CustomElevatedbutton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(cartProducts: cartitems),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE92C3C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
