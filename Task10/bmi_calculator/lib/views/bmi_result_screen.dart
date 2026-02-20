import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/widgets/bmi_result_screen_body.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppContants.kScaffoldColor,
      body: BmiResultScreenBody(),
    );
  }
}
