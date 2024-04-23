import 'package:flutter/material.dart';
import 'package:teckno_soft/utils/constant/imgaeasset.dart';
import 'package:teckno_soft/view/widget/textofgooglefontstyle.dart';

class CustomOffers extends StatelessWidget {
  final String title;
  final String body;

  const CustomOffers({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              scale: 0.6,
              opacity: 0.9,
              image: AssetImage(AppImages.avatar),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textOfGoogleFontStyle(title, Colors.white, 25),
                    const SizedBox(
                      height: 20,
                    ),
                    textOfGoogleFontStyle(body, Colors.amber, 25)
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                      onPressed: () {}, child: const Text("Shop Now")),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
