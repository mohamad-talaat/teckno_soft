import 'package:get/get.dart';

class ItemsController extends GetxController {
  static const String rootImages = "assets/images";

  List<String> image = [
    "$rootImages/logoapp.png",
    "$rootImages/one.PNG",
    "$rootImages/two.PNG",
    "$rootImages/three.PNG",
  ];

  int index = 0;
  String changeImage(val) {
    index = val;
    update();

    if (index == 0) {
      return "$rootImages/logoapp.png";
    }
    if (index == 1) {
      return "$rootImages/one.PNG";
    }
    if (index == 2) {
      return "$rootImages/two.PNG";
    } else {
      return "$rootImages/three.PNG";
    }
  }

  List productSize = [
    32,
    33,
    34,
    35,
    36,
    37,
    38,
  ];

  goToItemsPage() {
    Get.toNamed('/items');
  }
}
