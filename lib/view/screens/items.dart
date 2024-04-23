import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/items_controller.dart';
import 'package:teckno_soft/view/widget/4screens/items/count-gotocart.dart';


class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsController());

    return Scaffold(
        body: ListView(
      children: [
      //const ItemsHome(),
        CustomCountAndGoToCart(
            addPressed: () {},
            removePressed: () {},
            goToCartPressed: () {},
            count: "5")
      ],
    ));
  }
}



/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/items_controller.dart';
import 'package:teckno_soft/utils/constant/imgaeasset.dart';
import 'package:teckno_soft/view/widget/4screens/home/product_aslist.dart';
import 'package:teckno_soft/view/widget/4screens/items/items-product-aslist.dart';
import 'package:teckno_soft/view/widget/items_widget.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsController controller = Get.put(ItemsController());
    return Scaffold(body: GetBuilder<ItemsController>(
      builder: (controller) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 0.6,
                    opacity: 0.9,
                    image: AssetImage(controller.changeImage(controller.index)),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...List.generate(
                      controller.image.length,
                      (index) => InkWell(
                        onTap: () {
                          controller.changeImage(index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 15),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 37,
                              ),
                              CircleAvatar(
                                  //    backgroundColor: Colors.amber,
                                  radius: 33,
                                  backgroundImage:
                                      AssetImage(controller.image[index])),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ////////////  after container /////////////
        ]);
      },
    ));
  }
}
*/