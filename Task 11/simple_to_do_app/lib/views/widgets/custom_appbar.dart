import 'package:flutter/material.dart';
import 'package:simple_to_do_app/views/widgets/title_iconbutton.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.onIconPressed,
    required this.icon,
  });
  final String title;
  final void Function()? onIconPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 34, fontWeight: .bold),
              ),
              const Text(
                'Octobar 15',
                style: TextStyle(fontSize: 12, color: Color(0xff757575)),
              ),
            ],
          ),
          const Spacer(),

          TitleIconbutton(icon: icon, onPressed: onIconPressed),
        ],
      ),
    );
  }
}
