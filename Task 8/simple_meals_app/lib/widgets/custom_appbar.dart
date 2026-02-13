import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.pagetitle, this.pageIcon});
  final String pagetitle;
  final IconData? pageIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xfffafafa),
      centerTitle: true,
      title: Text(
        pagetitle,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Icon(pageIcon),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
