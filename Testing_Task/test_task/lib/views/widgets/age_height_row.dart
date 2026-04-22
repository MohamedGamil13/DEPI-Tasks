import 'package:flutter/material.dart';
import 'package:test_task/views/widgets/adder_widget.dart';

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
