import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdderWidget extends StatelessWidget {
  const AdderWidget({super.key, required this.title, required this.isAge});
  final String title;
  final bool isAge;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 156,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          BlocBuilder<BmiCubit, BmiState>(
            builder: (context, state) {
              return Text(
                title,
                style: const TextStyle(
                  fontWeight: .w400,
                  fontSize: 17.6,
                  color: AppContants.kbuttonColor,
                ),
              );
            },
          ),
          BlocBuilder<BmiCubit, BmiState>(
            builder: (context, state) {
              return Text(
                isAge
                    ? state.userModel.age.toString()
                    : state.userModel.weightKG.toString(),
                style: const TextStyle(
                  fontWeight: .w700,
                  fontSize: 58,
                  color: AppContants.kpraimaryColor,
                ),
              );
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      isAge
                          ? context.read<BmiCubit>().subAge()
                          : context.read<BmiCubit>().subWeight();
                    },
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: const BoxDecoration(
                        color: AppContants.kbuttonColor,
                        shape: .circle,
                      ),
                      child: const Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      isAge
                          ? context.read<BmiCubit>().addAge()
                          : context.read<BmiCubit>().addWeight();
                    },
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: const BoxDecoration(
                        color: AppContants.kbuttonColor,
                        shape: .circle,
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// font-family: Inter;
// font-weight: 700;
// font-style: Bold;
// font-size: 57.39px;
// leading-trim: NONE;
// line-height: 100%;
// letter-spacing: 0%;
// text-align: center;
