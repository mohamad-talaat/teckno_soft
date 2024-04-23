import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;
  final String? iconName;
  final bool isactive;
  const BottomNavBarWidget(
      {super.key,
      this.onPressed,
      this.icon,
      required this.isactive,
      this.iconName});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(children: [
        Icon(icon, color: isactive ? Colors.black : Colors.orangeAccent),
        Text(
          '$iconName',
          style:
              TextStyle(color: isactive ? Colors.black : Colors.orangeAccent),
        )
      ]),
    );
  }
}
