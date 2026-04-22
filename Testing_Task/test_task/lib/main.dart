import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/controller/bmi_bloc/bmi_bloc.dart';
import 'package:test_task/services/bmi_service.dart';

import 'views/bmi_calc_screen.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiBloc(BmiService()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiCalcScreen(),
      ),
    );
  }
}
