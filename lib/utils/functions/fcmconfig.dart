// ignore_for_file: unused_local_variable
/*
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import '../../controller/orders/pending_controller.dart';

PirmitionNotifications() async {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

}

fcmNotification() {
  FirebaseMessaging.onMessage.listen((message) {
    print('onMessage========================== ${message.data}');
    Get.snackbar(
      message.notification!.title.toString(),
      message.notification!.body.toString(),
    );  
     FlutterRingtonePlayer.playNotification();
    refreshPageNotification(message.data);
  });



}

refreshPageNotification(data) {
  //good instead of Stream Firebase // تعمل ريفرش للصفحة بالمعلومات المطلوبه يتعملها ابديت
  /* print("============================= page id ");
  print(data['pageid']);
  print("============================= page name ");
  print(data['pagename']);
  print("================== Current Route");
  print(Get.currentRoute);
*/
  if (Get.currentRoute == "/orderspending" &&
      data['pagename'] == "refreshorderpending") {
    OrdersPendingController controller = Get.find();
    controller.refrehOrder();
  } else if (Get.currentRoute == "/orderscompleted" &&
      data['pagename'] == "refreshordercompleted") {
    OrdersPendingController controller = Get.find();
    controller.refrehOrder();
  }
}
// Firebase + stream
// Socket io
// Notification refresh

*/