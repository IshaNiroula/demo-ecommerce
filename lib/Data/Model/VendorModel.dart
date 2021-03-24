import 'dart:convert';

List<Vendor> vendorFromJson(String str) =>
    List<Vendor>.from(json.decode(str).map((x) => Vendor.fromJson(x)));

String vendorToJson(List<Vendor> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Vendor {
  int vendorId;
  String vendorName;
  String email;
  int phoneNumber;
  String password;
  bool icon;
  String firstName;
  String lastName;
  int pinId;
  int verificationCode;
  bool isVerified;
  DateTime creationTime;
  bool vendorType;
  String description;
  int vendorCategoryId;
  String vendorCategoryName;
  String vendorAddress;
  String seoTitle;
  String metaTitle;
  String metaDescription;
  String metaKeyword;
  String pageSizeOptions;
  List<dynamic> vendorNotes;

  Vendor({
    this.vendorId,
    this.vendorName,
    this.email,
    this.phoneNumber,
    this.password,
    this.icon,
    this.firstName,
    this.lastName,
    this.pinId,
    this.verificationCode,
    this.isVerified,
    this.creationTime,
    this.vendorType,
    this.description,
    this.vendorCategoryId,
    this.vendorCategoryName,
    this.vendorAddress,
    this.seoTitle,
    this.metaTitle,
    this.metaDescription,
    this.metaKeyword,
    this.pageSizeOptions,
    this.vendorNotes,
  });

  factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
        vendorId: json["vendorId"],
        vendorName: json["vendorName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
        icon: json["icon"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        pinId: json["pinId"],
        verificationCode: json["verificationCode"],
        isVerified: json["isVerified"],
        creationTime: DateTime.parse(json["creationTime"]),
        vendorType: json["vendorType"],
        description: json["description"],
        vendorCategoryId: json["vendorCategoryId"],
        vendorCategoryName: json["vendorCategoryName"],
        vendorAddress: json["vendorAddress"],
        seoTitle: json["seoTitle"],
        metaTitle: json["metaTitle"],
        metaDescription: json["metaDescription"],
        metaKeyword: json["metaKeyword"],
        pageSizeOptions: json["pageSizeOptions"],
        vendorNotes: List<dynamic>.from(json["vendorNotes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "vendorId": vendorId,
        "vendorName": vendorName,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "icon": icon,
        "firstName": firstName,
        "lastName": lastName,
        "pinId": pinId,
        "verificationCode": verificationCode,
        "isVerified": isVerified,
        "creationTime": creationTime.toIso8601String(),
        "vendorType": vendorType,
        "description": description,
        "vendorCategoryId": vendorCategoryId,
        "vendorCategoryName": vendorCategoryName,
        "vendorAddress": vendorAddress,
        "seoTitle": seoTitle,
        "metaTitle": metaTitle,
        "metaDescription": metaDescription,
        "metaKeyword": metaKeyword,
        "pageSizeOptions": pageSizeOptions,
        "vendorNotes": List<dynamic>.from(vendorNotes.map((x) => x)),
      };
}
