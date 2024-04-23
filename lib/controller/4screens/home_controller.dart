import 'package:get/get.dart';
import 'package:teckno_soft/data/models/categorymodel.dart';
import 'package:teckno_soft/data/models/itemsmodel.dart';
import 'package:teckno_soft/data/remote/home_data.dart';
import 'package:teckno_soft/utils/class/statusrequest.dart';
import 'package:teckno_soft/utils/functions/handlingDataController.dart';
import 'package:teckno_soft/utils/pagescall/pagename.dart';

class HomeControllerImp extends GetxController {
  HomeData testData = HomeData(Get.find());
  List<CategoryModel> categorydata = [];
  List data = [];
  List<ItemsModel> itemsdata = [];
  late StatusRequest statusRequest;
  String title = " ";
  String body = " ";

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") {
        List listdatacategory = response['category']["data"];
        List listdataitems = response['items']["data"];

       data.addAll(response['items']["data"]);

        title = response['settings']["data"][0]["settings_title"];
        body = response['settings']["data"][0]["settings_body"];

        categorydata
            .addAll(listdatacategory.map((e) => CategoryModel.fromJson(e)));
        itemsdata.addAll(listdataitems.map((e) => ItemsModel.fromJson(e)));
      }
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  goToItemsPage() {
    Get.toNamed(AppRoute.items);
  }
}
