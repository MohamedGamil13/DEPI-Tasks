import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';
import 'package:test_task/views/widgets/bmi_result_screen_body.dart';

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
