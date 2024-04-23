import 'package:teckno_soft/data/api_link.dart';
import 'package:teckno_soft/utils/class/crud.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    print("the problem <<<<<<<<<in Link Data");
    var response = await crud.postData(ApiLink.settingsHomeLink, {});
    print("the problem here is <<<<<<<<<<<<<<<<testData");
    return response.fold((l) => l, (r) => r);
  }
}
