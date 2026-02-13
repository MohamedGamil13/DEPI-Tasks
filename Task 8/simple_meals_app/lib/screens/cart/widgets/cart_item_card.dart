import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/cart_item.dart';
import 'package:simple_meals_app/screens/cart/widgets/quantitu_selector.dart'
    show QuantitySelector;

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;

  const CartItemTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              cartItem.image,
              width: 80,
              height: 80,
              fit: .cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 80,
                height: 80,
                color: Colors.grey[200],
                child: const Icon(Icons.fastfood),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Size: ${cartItem.size}",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const Text(
                  "Burger Palace",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          QuantitySelector(cartItem: cartItem),
        ],
      ),
    );
  }
}
