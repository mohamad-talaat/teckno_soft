class MyFavoriteModel {
  int? favoriteId;
  int? favoriteUsersid;
  int? favoriteItemsid;
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsPrice;
  int? itemsDescount;
  int? itemsCategoryid;
  int? usersId;
    String? categoryName;

  MyFavoriteModel(
      {this.favoriteId,
      this.favoriteUsersid,
      this.favoriteItemsid,
      this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsPrice,
      this.itemsDescount,
      this.itemsCategoryid,
      this.categoryName ,
      this.usersId});

  MyFavoriteModel.fromJson(Map<String, dynamic> json) {
        categoryName = json['category_name'];

    favoriteId = json['favorite_id'];
    favoriteUsersid = json['favorite_usersid'];
    favoriteItemsid = json['favorite_itemsid'];
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsPrice = json['items_price'];
    itemsDescount = json['items_descount'];
    itemsCategoryid = json['items_categoryid'];
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = favoriteId;
    data['favorite_usersid'] = favoriteUsersid;
    data['favorite_itemsid'] = favoriteItemsid;
        data['category_name'] = categoryName;

    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_price'] = itemsPrice;
    data['items_descount'] = itemsDescount;
    data['items_categoryid'] = itemsCategoryid;
    data['users_id'] = usersId;
    return data;
  }
}