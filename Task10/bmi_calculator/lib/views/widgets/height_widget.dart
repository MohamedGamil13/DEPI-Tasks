import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:bmi_calculator/views/widgets/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({super.key, required this.height});
  final int height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 220,
        width: 360,
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
                fontWeight: .w400,
                fontSize: 17.6,
                color: AppContants.kbuttonColor,
              ),
            ),
            BlocBuilder<BmiCubit, BmiState>(
              builder: (context, state) {
                return Text(
                  state.userModel.heightCM.round().toString(),
                  style: const TextStyle(
                    fontWeight: .w700,
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
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    '50 CM',
                    style: TextStyle(fontSize: 13, fontWeight: .w400),
                  ),
                  Text(
                    '300 CM',
                    style: TextStyle(fontSize: 13, fontWeight: .w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
