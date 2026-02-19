import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'views/bmi_calc_screen.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiCalcScreen(),
      ),
    );
  }
}
