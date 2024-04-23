import 'package:get/get.dart';

import '../data/models/myfavoritemodel.dart';
import '../data/remote/myfavorite_data.dart';
import '../utils/class/statusrequest.dart';
import '../utils/functions/handlingDataController.dart';
import '../utils/services/services.dart';

class MyFavoriteController extends GetxController {
  MyFavoriteData myfavoriteData = MyFavoriteData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();

  viewFavorite() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await myfavoriteData.viewData(
        //myServices.sharedPreferences.getString("id")!
        "1");
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List resdata = response['data'];
        data.addAll(resdata.map((e) => MyFavoriteModel.fromJson(e)));
        // ف الاسكرين  MyFavoriteModel.fromJson(e) وفرت عليا استدعاء لل

        //   data.addAll(response['data']); //  MyFavoriteModel.fromJson(لمكان العنصر اللي عاوز اطبعه )
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  List<MyFavoriteModel> data = [];

  void deleteMyfavorite(String favoriteid) async {
    data.clear();
    var response = await myfavoriteData.deleteDataFromMyFavorite(favoriteid);
    print("=============================== Controller $response ");
    data.removeWhere((element) =>
        element.favoriteId.toString() ==
        favoriteid
            .toString()); // to apdate page auto // السطر دا كل اللي بيعملة انه بيحدث الصفحة بعد الحذف ولكن الحذف تم من غيرة عادي

    update();
  }

  @override
  void onInit() {
    viewFavorite();
    super.onInit();
  }
}
