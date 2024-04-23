import 'package:teckno_soft/data/api_link.dart';

import '../../utils/class/crud.dart';

class FavoriteData {
  Crud crud;
  FavoriteData(this.crud);
  addToFavorite(usersid, itemsid) async {
    print("the problem <<<<<<<<<in Link Data in favorite");
    var response = await crud.postData(
        ApiLink.addToFavorite, {"usersid": usersid, "itemsid": itemsid});
    print("the problem here is <<<<<<<<<<<<<<<<testData in favorite");
    return response.fold((l) => l, (r) => r);
  }

  removeFromFavorite(usersid, itemsid) async {
    print("the problem <<<<<<<<<in Link Data in favorite");
    var response = await crud.postData(
        ApiLink.removeFromFavorite, {"usersid": usersid, "itemsid": itemsid});
    print("the problem here is <<<<<<<<<<<<<<<<testData   in favorite");
    return response.fold((l) => l, (r) => r);
  }
}
