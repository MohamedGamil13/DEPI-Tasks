import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/views/widgets/gender_toggle.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Gender',
            style: TextStyle(
              fontWeight: .w400,
              fontSize: 17.6,
              color: AppContants.kbuttonColor,
            ),
          ),
          SizedBox(height: 20),
          GenderToggle(),
        ],
      ),
    );
  }
}
