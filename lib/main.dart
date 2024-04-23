import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/utils/Initialbinding.dart';
import 'package:teckno_soft/utils/localization/changelocal.dart';
import 'package:teckno_soft/utils/localization/translation.dart';
import 'package:teckno_soft/utils/pagescall/routes.dart';
import 'package:teckno_soft/utils/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      //home: ItemsHome(),

      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      // theme: controller.appTheme,
      initialBinding: InitialBinding(),
      getPages: routes,
    );
  }
}
