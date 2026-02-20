import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiResultScreenBody extends StatelessWidget {
  const BmiResultScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        const Text(
          'Body Mass Index',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 28,
            color: AppContants.kbuttonColor,
          ),
        ),
        Container(
          height: 420,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'BMI Results',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                  color: AppContants.kbuttonColor,
                ),
              ),
              BlocBuilder<BmiCubit, BmiState>(
                buildWhen: (previous, current) =>
                    previous.userModel.bmi != current.userModel.bmi,
                builder: (context, state) {
                  return Text(
                    state.userModel.bmi?.toStringAsFixed(2) ?? '0.00',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 58,
                      color: AppContants.kpraimaryColor,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
