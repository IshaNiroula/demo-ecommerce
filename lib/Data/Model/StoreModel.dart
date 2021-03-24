import 'dart:convert';

List<Store> storeFromJson(String str) =>
    List<Store>.from(json.decode(str).map((x) => Store.fromJson(x)));

String storeToJson(List<Store> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Store {
  int storeId;
  String storeName;
  String url;
  bool ssiEnabled;
  String hosts;
  int defaultLanguageId;
  String displayOrder;
  String companyAddress;
  String companyName;
  String companyPhoneNumber;
  String companyVat;

  Store({
    this.storeId,
    this.storeName,
    this.url,
    this.ssiEnabled,
    this.hosts,
    this.defaultLanguageId,
    this.displayOrder,
    this.companyAddress,
    this.companyName,
    this.companyPhoneNumber,
    this.companyVat,
  });

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        storeId: json["storeId"],
        storeName: json["storeName"],
        url: json["url"],
        ssiEnabled: json["ssiEnabled"],
        hosts: json["hosts"],
        defaultLanguageId: json["defaultLanguageId"],
        displayOrder: json["displayOrder"],
        companyAddress: json["companyAddress"],
        companyName: json["companyName"],
        companyPhoneNumber: json["companyPhoneNumber"],
        companyVat: json["companyVat"],
      );

  Map<String, dynamic> toJson() => {
        "storeId": storeId,
        "storeName": storeName,
        "url": url,
        "ssiEnabled": ssiEnabled,
        "hosts": hosts,
        "defaultLanguageId": defaultLanguageId,
        "displayOrder": displayOrder,
        "companyAddress": companyAddress,
        "companyName": companyName,
        "companyPhoneNumber": companyPhoneNumber,
        "companyVat": companyVat,
      };
}
