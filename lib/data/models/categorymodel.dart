class CategoryModel {
  int? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryDatetime;

  CategoryModel(
      {this.categoryId,
      this.categoryName,
      this.categoryNameAr,
      this.categoryDatetime});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryNameAr = json['category_name_ar'];
    categoryDatetime = json['category_datetime'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    data['category_name_ar'] = categoryNameAr;
    data['category_datetime'] = categoryDatetime;
    return data;
  }
}