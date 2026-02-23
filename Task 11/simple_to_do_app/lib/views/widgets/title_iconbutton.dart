import 'package:flutter/material.dart';

class TitleIconbutton extends StatelessWidget {
  const TitleIconbutton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black, shape: .circle),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
