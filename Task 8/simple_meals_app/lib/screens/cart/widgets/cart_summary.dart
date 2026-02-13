import 'package:flutter/material.dart';
import 'package:simple_meals_app/screens/cart/widgets/sumary_row.dart';

class CartSummary extends StatelessWidget {
  final double subtotal;

  const CartSummary({super.key, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    const double deliveryFee = 5.00;
    const double taxes = 2.50;
    final double total = subtotal + deliveryFee + taxes;

    return Column(
      children: [
        const Divider(height: 40, thickness: 1, color: Color(0xFFF0F0F0)),

        SummaryRow(
          label: "Subtotal",
          value: "\$${subtotal.toStringAsFixed(2)}",
        ),
        SummaryRow(
          label: "Delivery Fee",
          value: "\$${deliveryFee.toStringAsFixed(2)}",
        ),
        SummaryRow(label: "Taxes", value: "\$${taxes.toStringAsFixed(2)}"),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Total",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$${total.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3142),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
