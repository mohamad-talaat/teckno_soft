class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsPrice;
  int? itemsDescount;
  int? itemsCategoryid;
  int? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryDatetime;

  ItemsModel(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsPrice,
      this.itemsDescount,
      this.itemsCategoryid,
      this.categoryId,
      this.categoryName,
      this.categoryNameAr,
      this.categoryDatetime});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsPrice = json['items_price'];
    itemsDescount = json['items_descount'];
    itemsCategoryid = json['items_categoryid'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryNameAr = json['category_name_ar'];
    categoryDatetime = json['category_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_desc'] = itemsDesc;
    data['items_desc_ar'] = itemsDescAr;
    data['items_image'] = itemsImage;
    data['items_price'] = itemsPrice;
    data['items_descount'] = itemsDescount;
    data['items_categoryid'] = itemsCategoryid;
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    data['category_name_ar'] = categoryNameAr;
    data['category_datetime'] = categoryDatetime;
    return data;
  }
}