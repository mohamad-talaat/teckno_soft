import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/4screens/home_controller.dart';
import 'package:teckno_soft/controller/myfavorite_controller.dart';
import 'package:teckno_soft/data/api_link.dart';
import 'package:teckno_soft/data/models/itemsmodel.dart';
import 'package:teckno_soft/data/models/myfavoritemodel.dart';
import 'package:teckno_soft/view/widget/textofgooglefontstyle.dart';

class MyFavoritePage extends GetView<MyFavoriteController> {
  const MyFavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return SizedBox(
        height: double.infinity,
        child: ListView.builder(
            itemCount: controller.data.length,
            //  scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomProductAsList(
                  ontap: () {}, favoriteModel: controller.data[index]);
            }));
  }
}

class CustomProductAsList extends StatelessWidget {
  final MyFavoriteModel favoriteModel;
  final void Function() ontap;

  const CustomProductAsList({
    super.key,
    required this.favoriteModel,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        //    mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 120,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CachedNetworkImage(
                  imageUrl:
                      "${ApiLink.imageststatic}/${favoriteModel.itemsImage}",
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              )),
          const SizedBox(
            height: 5,
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textOfGoogleFontStyle(
                  favoriteModel.itemsName.toString(), Colors.black, 15),
              const SizedBox(
                height: 5,
              ),
              // Text(favoriteModel.categoryName.toString(),      style: const TextStyle(    fontSize: 15, fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  textOfGoogleFontStyle(
                      "\$${favoriteModel.itemsPrice.toString()}",
                      Colors.black,
                      15),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                      "\$${(favoriteModel.itemsPrice! - (favoriteModel.itemsPrice! * favoriteModel.itemsDescount! / 100)).toString()}",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.lineThrough,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.redAccent,
                        color: Colors.red,
                      ))
                ],
              ),
              GetBuilder<MyFavoriteController>(builder: (controller) {
                return IconButton(
                    onPressed: () {
                      controller.deleteMyfavorite(
                          favoriteModel.favoriteId.toString());
                    },
                    icon: const Icon(
                      Icons.delete_forever,
                    ));
              })
            ],
          ),
        ],
      ),
    );
  }
}
