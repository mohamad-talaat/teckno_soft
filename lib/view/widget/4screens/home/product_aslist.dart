import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/4screens/home_controller.dart';
import 'package:teckno_soft/controller/favorite_controller.dart';
import 'package:teckno_soft/data/api_link.dart';
import 'package:teckno_soft/data/models/itemsmodel.dart';
import 'package:teckno_soft/view/widget/textofgooglefontstyle.dart';

class ItemsHome extends GetView<HomeControllerImp> {
  const ItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    FavoriteController favController = Get.put(FavoriteController());
    return SizedBox(
        height: 207,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: controller.itemsdata.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              favController.favMap[controller.data[index]['items_id']] =
                  controller.data[index]['favorite'];
              return CustomProductAsList(
                  ontap: () {}, itemsModel: controller.itemsdata[index]);
            }));
  }
}

class CustomProductAsList extends StatelessWidget {
  final ItemsModel itemsModel;
  final void Function() ontap;

  const CustomProductAsList({
    super.key,
    required this.itemsModel,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    HomeControllerImp homCont = Get.put(HomeControllerImp());
    return Column(
      //    mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: CachedNetworkImage(
                imageUrl: "${ApiLink.imageststatic}/${itemsModel.itemsImage}",
                height: 50,
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
        SizedBox(
          width: 120,
          child: textOfGoogleFontStyle(
              itemsModel.itemsName.toString(), Colors.black, 15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemsModel.categoryName.toString(),
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400)),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    textOfGoogleFontStyle(
                        "\$${itemsModel.itemsPrice.toString()}",
                        Colors.black,
                        15),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                        "\$${(itemsModel.itemsPrice! - (itemsModel.itemsPrice! * itemsModel.itemsDescount! / 100)).toString()}",
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
              ],
            ),
            //   Spacer(),

            GetBuilder<FavoriteController>(
              builder: (controller) {
                return IconButton(
                    onPressed: () {
                      if (controller.favMap[itemsModel.itemsId.toString()] ==
                          "0") {
                          controller.setFav(itemsModel.itemsId.toString(), "1");
                      controller
                            .addFavorite(itemsModel.itemsId.toString());
                      } else {            

                        controller.setFav(itemsModel.itemsId.toString(), "0");
                        controller.removeFavorite(itemsModel.itemsId.toString());

                      }
                    },
                    icon:
                        controller.favMap[itemsModel.itemsId.toString()] ==
                                "1"
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border));
              },
            )
          ],
        ),
      ],
    );
  }
}
