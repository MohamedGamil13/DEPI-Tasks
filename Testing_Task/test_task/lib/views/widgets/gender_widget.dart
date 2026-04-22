import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';
import 'package:test_task/views/widgets/gender_toggle.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
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
              fontWeight: FontWeight.w400,
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
