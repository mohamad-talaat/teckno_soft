import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/data/remote/favorite_data.dart';
import 'package:teckno_soft/utils/constant/color.dart';
import 'package:teckno_soft/utils/services/services.dart';
import 'package:teckno_soft/view/widget/textofgooglefontstyle.dart';

import '../utils/class/statusrequest.dart';
import '../utils/functions/handlingDataController.dart';

class FavoriteController extends GetxController {
  Map favMap = {};
  setFav(id, val) {
    favMap[id] = val;
    update();
  }

  FavoriteData favoriteData = FavoriteData(Get.find());
  late StatusRequest statusRequest;
  List data = [];
  MyServices myServices = Get.find();

  addFavorite(String itemsid) async {
   // data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addToFavorite(
        "1"

        /// myServices.sharedPreferences.getString("id").toString()
        ,
        itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "Alert",
            messageText: textOfGoogleFontStyle(
                "Product Added To Favorite", Colors.white, 18));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }

  removeFavorite(String itemsid) async {
  //  data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFromFavorite(
        "1"
        //  myServices.sharedPreferences.getString("id")!
        ,
        itemsid);
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "Alert",
            messageText: textOfGoogleFontStyle(
                "Product Removed From Favorite", Colors.white, 18));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
  }
}
