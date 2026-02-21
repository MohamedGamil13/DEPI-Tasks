import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/views/bmi_result_screen.dart';
import 'package:bmi_calculator/views/widgets/age_height_row.dart';
import 'package:bmi_calculator/views/widgets/custom_button.dart';
import 'package:bmi_calculator/views/widgets/gender_widget.dart';
import 'package:bmi_calculator/views/widgets/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCalcScreen extends StatelessWidget {
  const BmiCalcScreen({super.key});

  void _onCalculate(BuildContext context) {
    context.read<BmiCubit>().calculateBMI();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BmiResultScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppContants.kScaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: AppContants.kbuttonColor,
                ),
              ),
              const SizedBox(height: 20),
              const AgeWeightRow(),
              const SizedBox(height: 20),
              const HeightWidget(),
              const SizedBox(height: 20),
              const GenderWidget(),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () => _onCalculate(context),
                text: 'Calculate',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
