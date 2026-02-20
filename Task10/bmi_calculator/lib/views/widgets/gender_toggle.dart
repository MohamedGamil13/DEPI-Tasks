import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderToggle extends StatelessWidget {
  const GenderToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<BmiCubit>().toggleGender();
          },
          child: Container(
            width: 220,
            height: 60,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: const Color(0xffF4F3FF),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Stack(
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: state.userModel.gender == Gender.male
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 110,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppContants.kpraimaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),

                /// Texts
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Male",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: state.userModel.gender == Gender.male ? Colors.white : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Female",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: state.userModel.gender == Gender.female ? Colors.white : Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
