import 'dart:convert';

List<Categories> categoriesFromJson(String str) =>
    List<Categories>.from(json.decode(str).map((x) => Categories.fromJson(x)));

String categoriesToJson(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
  int categoryId;
  String categoryName;
  bool includeInTopMenu;
  bool published;
  bool deleted;
  int displayOrder;
  DateTime dateCreated;
  DateTime dateModified;
  int parentCategoryId;

  Categories({
    this.categoryId,
    this.categoryName,
    this.includeInTopMenu,
    this.published,
    this.deleted,
    this.displayOrder,
    this.dateCreated,
    this.dateModified,
    this.parentCategoryId,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        includeInTopMenu: json["includeInTopMenu"],
        published: json["published"],
        deleted: json["deleted"],
        displayOrder: json["displayOrder"],
        dateCreated: DateTime.parse(json["dateCreated"]),
        dateModified: DateTime.parse(json["dateModified"]),
        parentCategoryId:
            json["parentCategoryId"] == null ? null : json["parentCategoryId"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "categoryName": categoryName,
        "includeInTopMenu": includeInTopMenu,
        "published": published,
        "deleted": deleted,
        "displayOrder": displayOrder,
        "dateCreated": dateCreated.toIso8601String(),
        "dateModified": dateModified.toIso8601String(),
        "parentCategoryId": parentCategoryId == null ? null : parentCategoryId,
      };
}
