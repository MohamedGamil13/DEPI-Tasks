import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/widgets/age_height_row.dart';
import 'package:bmi_calculator/views/widgets/gender_widget.dart';
import 'package:bmi_calculator/views/widgets/height_widget.dart';
import 'package:flutter/material.dart';

class BmiCalcScreen extends StatelessWidget {
  const BmiCalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppContants.kScaffoldColor,
      body: Column(
        spacing: 20,
        children: [
          SizedBox(height: 50),
          Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontWeight: .w400,
              fontSize: 18,
              color: AppContants.kbuttonColor,
            ),
          ),
          SizedBox(height: 10),
          AgeWeightRow(),
          HeightWidget(height: 174),
          GenderWidget(),
        ],
      ),
    );
  }
}
