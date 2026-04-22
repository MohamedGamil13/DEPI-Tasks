import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/constants.dart';
import 'package:test_task/controller/bmi_cubit.dart';
import 'package:test_task/views/bmi_result_screen.dart';
import 'package:test_task/views/widgets/age_height_row.dart';
import 'package:test_task/views/widgets/custom_button.dart';
import 'package:test_task/views/widgets/gender_widget.dart';
import 'package:test_task/views/widgets/height_widget.dart';

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
