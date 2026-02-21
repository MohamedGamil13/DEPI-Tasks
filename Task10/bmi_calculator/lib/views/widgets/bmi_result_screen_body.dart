import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiResultScreenBody extends StatelessWidget {
  const BmiResultScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        const Center(
          child: Text(
            'Body Mass Index',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              color: AppContants.kbuttonColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 420,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const SizedBox(height: 30),
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
                      fontSize: 120,
                      color: AppContants.kpraimaryColor,
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              const Text(
                'NORMAL BMI',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: AppContants.kbuttonColor,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Underweight: BMI less than 18.5',

                      style: TextStyle(
                        fontSize: 14,
                        color: AppContants.kbuttonColor,
                        fontWeight: .w500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Normal weight: BMI 18.5 to 24.9',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppContants.kbuttonColor,
                        fontWeight: .w500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Overweight: BMI 25 to 29.9',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppContants.kbuttonColor,
                        fontWeight: .w500,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Obesity: 30 to 40',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppContants.kbuttonColor,
                        fontWeight: .w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomButton(onPressed: () {}, text: 'Save Result'),
        ),
      ],
    );
  }
}
