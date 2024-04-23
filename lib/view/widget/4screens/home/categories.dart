import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/4screens/home_controller.dart';
import 'package:teckno_soft/data/models/categorymodel.dart';
import 'package:teckno_soft/view/widget/textofgooglefontstyle.dart';

class Category extends GetView<HomeControllerImp> {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return SizedBox(
      height: 25,
      //width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: controller.categorydata.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            CutomCategory(categorymodel: controller.categorydata[index]),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
      ),
    );
  }
}

class CutomCategory extends StatelessWidget {
  final CategoryModel categorymodel;
  const CutomCategory({super.key, required this.categorymodel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      //width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
        child: textOfGoogleFontStyle(
            categorymodel.categoryName.toString(), Colors.black, 20),
        //Text(categorymodel.categoryName.toString()),
      ),
    );
  }
}
