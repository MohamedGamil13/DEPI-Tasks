import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/cart_item.dart';
import 'package:simple_meals_app/screens/details/widgets/circle_button.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({super.key, required this.cartItem});
  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          CircleButton(
            child: const Icon(Icons.remove, size: 16, color: Colors.black54),
            onTap: () {
              cartItem.quantity--;
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("1", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          CircleButton(
            child: const Icon(Icons.add, size: 16, color: Colors.black54),
            onTap: () {
              cartItem.quantity++;
            },
          ),
        ],
      ),
    );
  }
}
