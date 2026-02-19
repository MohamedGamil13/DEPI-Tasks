import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/widgets/adder_widget.dart';
import 'package:flutter/material.dart';

class BmiCalcScreen extends StatelessWidget {
  const BmiCalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppContants.kScaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: .spaceAround,
              children: [
                AdderWidget(title: "Age", isAge: true),
                AdderWidget(title: "Weight", isAge: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
