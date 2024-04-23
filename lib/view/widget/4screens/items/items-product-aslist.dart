/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/4screens/home_controller.dart';
import 'package:teckno_soft/data/models/itemsmodel.dart';

class ItemsHome extends GetView<HomeControllerImp> {
  const ItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return SizedBox( height: 200, 
      child: ListView.separated(
          itemBuilder: (context, index) => CustomItemsProductAsList(
                favouritePressed: () {},
                readMorePressed: () {},
                itemsModel: controller.itemsdata[index],
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: controller.itemsdata.length),
    );
  }
}

class CustomItemsProductAsList extends StatelessWidget {
  final ItemsModel itemsModel;
  final void Function() favouritePressed;
  final void Function() readMorePressed;
  const CustomItemsProductAsList({
    super.key,
    required this.favouritePressed,
    required this.readMorePressed,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(   
      builder: (controller) {
         Get.put(HomeControllerImp());
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(
                              controller.changeImage(controller.index)),
                          fit: BoxFit.cover),
                      color: Colors.grey[200]),
                  child:Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          ...List.generate(
                            1,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      controller.changeImage(index);
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        const CircleAvatar(
                                          radius: 37,
                                          backgroundColor: Colors.white,
                                        ),
                                        CircleAvatar(
                                          radius: 34,
                                          backgroundImage: AssetImage(
                                              controller.image[index]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                                     
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(itemsModel.itemsName.toString(),
                    maxLines: 2, // Limit to two lines
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(itemsModel.categoryName.toString(),
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400)),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text("\$${itemsModel.itemsPrice.toString()}",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("\$${"200"}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationColor: Colors.redAccent,
                                  color: Colors.red,
                                )),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: favouritePressed,
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 30,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 SizedBox(
                  width: double.infinity,
                  height:
                      50, // Set a fixed height or adjust according to your UI design
                  child: Expanded(
                    child: Row(
                      children: [
                        ...List.generate(
                            controller.productSize.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 1.5),
                              child: CircleAvatar(
                                backgroundColor: const Color.fromARGB(31, 63, 63, 63),
                                radius: 25,
                                child: Text("${controller.productSize[index]}"),
                              ),
                            ),
                          ),
                       
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  itemsModel.itemsDesc.toString(),
                  //"Styled for the 70's \n loved insd po adpo epopoaef poae fpoefpoepoae popoe poe fpoe pofpo aepfo oepf  efwk powek powekwe pok",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                TextButton(
                    onPressed: readMorePressed,
                    child: const Text("Read more...")),
              ]),
        );
      },
    );
  }
}
*/