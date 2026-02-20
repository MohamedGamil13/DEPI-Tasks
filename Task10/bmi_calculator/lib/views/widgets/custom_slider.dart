import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(
        context,
      ).copyWith(showValueIndicator: ShowValueIndicator.onDrag),
      child: BlocBuilder<BmiCubit, BmiState>(
        buildWhen: (previous, current) =>
            previous.userModel.heightCM != current.userModel.heightCM,
        builder: (context, state) {
          final height = state.userModel.heightCM;

          return Slider(
            value: height,
            onChanged: (val) => context.read<BmiCubit>().setHeight(val),
            min: 50,
            max: 300,
            divisions: 250,
            label: height.round().toString(),
            activeColor: AppContants.kpraimaryColor,
          );
        },
      ),
    );
  }
}
