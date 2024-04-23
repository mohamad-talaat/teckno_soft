import 'package:get/get.dart';
import 'package:teckno_soft/data/remote/test_data.dart';
import 'package:teckno_soft/utils/class/statusrequest.dart';
import 'package:teckno_soft/utils/functions/handlingDataController.dart';

class TestController extends GetxController {

  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest =
        StatusRequest.loading; //اول ما نستدعي الداتا بيكون ف مرحلة التحميل لسه
    var response = await testData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response["status"] == "success") data.addAll(response['data']);
      // if (response["status"] == "ok") data.addAll(response['articles']);
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
}
