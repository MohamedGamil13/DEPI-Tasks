import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/cart_item.dart';
import 'package:simple_meals_app/screens/cart/widgets/cart_item_card.dart';
import 'package:simple_meals_app/screens/cart/widgets/cart_summary.dart';
import 'package:simple_meals_app/screens/cart/widgets/restaurant_header.dart';
import 'package:simple_meals_app/screens/details/widgets/custom_elevatedbutton.dart';
import 'package:simple_meals_app/widgets/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.cartProducts});
  final List<CartItem> cartProducts;

  @override
  Widget build(BuildContext context) {
    final double subtotal = cartProducts.fold(
      0,
      (sum, item) => sum + item.price,
    );

    return Scaffold(
      appBar: const CustomAppbar(pagetitle: 'Cart'),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  RestaurantHeader(
                    name: 'Burger Palace',
                    itemCount: cartProducts.length,
                  ),
                  const SizedBox(height: 12),

                  ...cartProducts.map(
                    (product) => CartItemTile(cartItem: product),
                  ),

                  CartSummary(subtotal: subtotal),
                ],
              ),
            ),
          ),
          const CustomElevatedbutton(text: "Checkout"),
          const Spacer(),
        ],
      ),
    );
  }
}
