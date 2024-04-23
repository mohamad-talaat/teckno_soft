import 'package:get/get.dart';
import 'package:teckno_soft/utils/class/crud.dart';

class InitialBinding extends Bindings {
  Crud crud = Crud();
  @override
  void dependencies() {
    Get.put(crud);
  }
}
