import 'package:bmi_calculator/views/widgets/adder_widget.dart';
import 'package:flutter/material.dart';

class AgeWeightRow extends StatelessWidget {
  const AgeWeightRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: .spaceAround,
      children: [
        AdderWidget(title: "Age", isAge: true),
        AdderWidget(title: "Weight", isAge: false),
      ],
    );
  }
}
