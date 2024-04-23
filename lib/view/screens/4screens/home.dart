import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/4screens/home_controller.dart';
import 'package:teckno_soft/view/widget/4screens/home/product_offers.dart';
import 'package:teckno_soft/view/widget/handlingdata/handlingdataview.dart';
import '../../widget/4screens/home/appbar.dart';
import '../../widget/4screens/home/categories.dart';
import '../../widget/4screens/home/disc._&_button_see_all.dart';
import '../../widget/4screens/home/offers_widgets.dart';
import '../../widget/4screens/home/product_aslist.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(body: GetBuilder<HomeControllerImp>(builder: (controller) =>
     Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          /*  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, */
          children: [
            const CustomAppBar(),
           
            const SizedBox(
              height: 20,
            ),
            CustomOffers(title: controller.title, body: controller.body),
            const SizedBox(
              height: 5,
            ),
            const CustomDiscAndSeeAll(discribtion: "New Arrival"),
            ItemsHome(),
            const CustomDiscAndSeeAll(discribtion: "Best Seller"),
            Category(),
            const SizedBox(
              height: 10,
            ),
            const CustomProductOffers(),
          ],
        ),
      )
 
    ));
  }
}
