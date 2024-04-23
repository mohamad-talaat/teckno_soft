
import 'package:teckno_soft/data/api_link.dart';

import '../../utils/class/crud.dart';

class MyFavoriteData {
  Crud crud;
  MyFavoriteData(this.crud);
  viewData(String userid) async {
    var response =
        await crud.postData(ApiLink.viewFavorite, {"id": userid.toString()});
    return response.fold((l) => l, (r) => r);
  }  
  deleteDataFromMyFavorite(String id) async {
    var response =
        await crud.postData(ApiLink.deleteFromMyFavoritePage, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
