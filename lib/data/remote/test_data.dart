import 'package:teckno_soft/data/api_link.dart';
import 'package:teckno_soft/utils/class/crud.dart';


// to recieve the vars and link from backend

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    // print("the problem <<<<<<<<<in Link Data");
    var response = await crud.postData(ApiLink.settingsHomeLink, {});
    // print("the problem here is <<<<<<<<<<<<<<<<testData");
    return response.fold((l) => l, (r) => r);
  }
}

/*   getData() async {
    // print("the problem <<<<<<<<<in Link Data");
    var response = await crud.getData(
       "https://newsapi.org/v2/top-headlines?category=sports&apiKey=c9549d6d17f24a06a3405763441e9825");
    // print("the problem here is <<<<<<<<<<<<<<<<testData");
    return response.fold((l) => l, (r) => r);
  }
} */
