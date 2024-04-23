import 'package:flutter/material.dart';

class CustomDiscAndSeeAll extends StatelessWidget {
  final String discribtion;
  const CustomDiscAndSeeAll({super.key, required this.discribtion});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(discribtion,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      const Spacer(),
      TextButton(
        onPressed: () {},
        child: const Text("See all",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
      )
    ]);
  }
}
