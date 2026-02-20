import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/views/widgets/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Height (CM)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17.6,
              color: AppContants.kbuttonColor,
            ),
          ),
          BlocBuilder<BmiCubit, BmiState>(
            buildWhen: (previous, current) =>
                previous.userModel.heightCM != current.userModel.heightCM,
            builder: (context, state) {
              return Text(
                state.userModel.heightCM.round().toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 58,
                  color: AppContants.kpraimaryColor,
                ),
              );
            },
          ),
          const CustomSlider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${AppContants.kMinHeight} CM',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
                Text(
                  '${AppContants.kMaxHeight} CM',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
