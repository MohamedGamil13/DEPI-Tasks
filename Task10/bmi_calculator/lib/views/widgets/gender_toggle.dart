import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderToggle extends StatelessWidget {
  const GenderToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<BmiCubit>().toggleGender(),
      child: Container(
        width: 220,
        height: 60,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: const Color(0xffF4F3FF),
          borderRadius: BorderRadius.circular(40),
        ),
        child: BlocBuilder<BmiCubit, BmiState>(
          buildWhen: (previous, current) =>
              previous.userModel.gender != current.userModel.gender,
          builder: (context, state) {
            final isMale = state.userModel.gender == Gender.male;

            return Stack(
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: isMale
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _GenderLabel(
                      title: Gender.male.displayName,
                      isSelected: isMale,
                    ),
                    _GenderLabel(
                      title: Gender.female.displayName,
                      isSelected: !isMale,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _GenderLabel extends StatelessWidget {
  const _GenderLabel({required this.title, required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black54,
          ),
        ),
      ),
    );
  }
}
