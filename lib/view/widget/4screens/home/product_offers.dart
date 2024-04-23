import 'package:flutter/material.dart';
import 'package:teckno_soft/utils/constant/imgaeasset.dart';

class CustomProductOffers extends StatelessWidget {
  const CustomProductOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return     GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                            height: 170,
                            width: 187,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[300]),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                AppImages.avatar,
                                fit: BoxFit.cover,
                              ),
                            )),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 40,
                                )),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  color: Colors.white,
                                  Icons.share,
                                  size: 40,
                                )),
                          ],
                        ),
                      ],
                    );
                  },
                );
  }
}