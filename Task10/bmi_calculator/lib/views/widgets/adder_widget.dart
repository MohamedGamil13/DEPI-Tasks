import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/controller/bmi_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdderWidget extends StatelessWidget {
  const AdderWidget({super.key, required this.title, required this.isAge});

  final String title;
  final bool isAge;

  void _onAdd(BuildContext context) {
    isAge
        ? context.read<BmiCubit>().addAge()
        : context.read<BmiCubit>().addWeight();
  }

  void _onSub(BuildContext context) {
    isAge
        ? context.read<BmiCubit>().subAge()
        : context.read<BmiCubit>().subWeight();
  }

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
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17.6,
              color: AppContants.kbuttonColor,
            ),
          ),
          BlocBuilder<BmiCubit, BmiState>(
            buildWhen: (previous, current) => isAge
                ? previous.userModel.age != current.userModel.age
                : previous.userModel.weightKG != current.userModel.weightKG,
            builder: (context, state) {
              return Text(
                isAge
                    ? state.userModel.age.toString()
                    : state.userModel.weightKG.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _AdderButton(
                    icon: Icons.remove,
                    onTap: () => _onSub(context),
                  ),
                  _AdderButton(icon: Icons.add, onTap: () => _onAdd(context)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AdderButton extends StatelessWidget {
  const _AdderButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 34,
        decoration: const BoxDecoration(
          color: AppContants.kbuttonColor,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
