// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);

import 'dart:convert';

List<Customer> customerFromJson(String str) =>
    List<Customer>.from(json.decode(str).map((x) => Customer.fromJson(x)));

String customerToJson(List<Customer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Customer {
  int customerId;
  String customerGuid;
  String username;
  String email;
  int phone;
  String password;
  int verificationCode;
  bool isVerified;
  bool shouldChangePasswordOnNextLogin;
  String avatar;
  String location;
  String rating;
  String wishlist;
  String purchaseInfo;
  String suscribeInfo;
  String setting;
  String payment;
  String gifCard;
  String order;
  bool isTaxExempt;
  int affiliateId;
  int vendorId;
  bool hasShoppingCartItems;
  bool requireReLogin;
  int failedLoginAttempts;
  DateTime cannotLoginUntilDateUtc;
  bool active;
  bool deleted;
  bool isSystemAccount;
  DateTime createdOnUtc;
  DateTime lastActivityDateUtc;
  int registeredInStoreId;
  List<dynamic> externalAuthenticationRecords;
  List<dynamic> customerRoles;
  List<dynamic> customerAddressMappings;
  List<dynamic> shoppingCartItems;
  List<dynamic> customerCustomerRoleMappings;
  List<dynamic> returnRequests;
  List<dynamic> addresses;

  Customer({
    this.customerId,
    this.customerGuid,
    this.username,
    this.email,
    this.phone,
    this.password,
    this.verificationCode,
    this.isVerified,
    this.shouldChangePasswordOnNextLogin,
    this.avatar,
    this.location,
    this.rating,
    this.wishlist,
    this.purchaseInfo,
    this.suscribeInfo,
    this.setting,
    this.payment,
    this.gifCard,
    this.order,
    this.isTaxExempt,
    this.affiliateId,
    this.vendorId,
    this.hasShoppingCartItems,
    this.requireReLogin,
    this.failedLoginAttempts,
    this.cannotLoginUntilDateUtc,
    this.active,
    this.deleted,
    this.isSystemAccount,
    this.createdOnUtc,
    this.lastActivityDateUtc,
    this.registeredInStoreId,
    this.externalAuthenticationRecords,
    this.customerRoles,
    this.customerAddressMappings,
    this.shoppingCartItems,
    this.customerCustomerRoleMappings,
    this.returnRequests,
    this.addresses,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customerId: json["customerId"],
        customerGuid: json["customerGuid"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        verificationCode: json["verificationCode"],
        isVerified: json["isVerified"],
        shouldChangePasswordOnNextLogin:
            json["shouldChangePasswordOnNextLogin"],
        avatar: json["avatar"],
        location: json["location"],
        rating: json["rating"],
        wishlist: json["wishlist"],
        purchaseInfo: json["purchaseInfo"],
        suscribeInfo: json["suscribeInfo"],
        setting: json["setting"],
        payment: json["payment"],
        gifCard: json["gifCard"],
        order: json["order"],
        isTaxExempt: json["isTaxExempt"],
        affiliateId: json["affiliateId"],
        vendorId: json["vendorId"],
        hasShoppingCartItems: json["hasShoppingCartItems"],
        requireReLogin: json["requireReLogin"],
        failedLoginAttempts: json["failedLoginAttempts"],
        cannotLoginUntilDateUtc:
            DateTime.parse(json["cannotLoginUntilDateUtc"]),
        active: json["active"],
        deleted: json["deleted"],
        isSystemAccount: json["isSystemAccount"],
        createdOnUtc: DateTime.parse(json["createdOnUtc"]),
        lastActivityDateUtc: DateTime.parse(json["lastActivityDateUtc"]),
        registeredInStoreId: json["registeredInStoreId"],
        externalAuthenticationRecords: List<dynamic>.from(
            json["externalAuthenticationRecords"].map((x) => x)),
        customerRoles: List<dynamic>.from(json["customerRoles"].map((x) => x)),
        customerAddressMappings:
            List<dynamic>.from(json["customerAddressMappings"].map((x) => x)),
        shoppingCartItems:
            List<dynamic>.from(json["shoppingCartItems"].map((x) => x)),
        customerCustomerRoleMappings: List<dynamic>.from(
            json["customerCustomerRoleMappings"].map((x) => x)),
        returnRequests:
            List<dynamic>.from(json["returnRequests"].map((x) => x)),
        addresses: List<dynamic>.from(json["addresses"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "customerId": customerId,
        "customerGuid": customerGuid,
        "username": username,
        "email": email,
        "phone": phone,
        "password": password,
        "verificationCode": verificationCode,
        "isVerified": isVerified,
        "shouldChangePasswordOnNextLogin": shouldChangePasswordOnNextLogin,
        "avatar": avatar,
        "location": location,
        "rating": rating,
        "wishlist": wishlist,
        "purchaseInfo": purchaseInfo,
        "suscribeInfo": suscribeInfo,
        "setting": setting,
        "payment": payment,
        "gifCard": gifCard,
        "order": order,
        "isTaxExempt": isTaxExempt,
        "affiliateId": affiliateId,
        "vendorId": vendorId,
        "hasShoppingCartItems": hasShoppingCartItems,
        "requireReLogin": requireReLogin,
        "failedLoginAttempts": failedLoginAttempts,
        "cannotLoginUntilDateUtc": cannotLoginUntilDateUtc.toIso8601String(),
        "active": active,
        "deleted": deleted,
        "isSystemAccount": isSystemAccount,
        "createdOnUtc": createdOnUtc.toIso8601String(),
        "lastActivityDateUtc": lastActivityDateUtc.toIso8601String(),
        "registeredInStoreId": registeredInStoreId,
        "externalAuthenticationRecords":
            List<dynamic>.from(externalAuthenticationRecords.map((x) => x)),
        "customerRoles": List<dynamic>.from(customerRoles.map((x) => x)),
        "customerAddressMappings":
            List<dynamic>.from(customerAddressMappings.map((x) => x)),
        "shoppingCartItems":
            List<dynamic>.from(shoppingCartItems.map((x) => x)),
        "customerCustomerRoleMappings":
            List<dynamic>.from(customerCustomerRoleMappings.map((x) => x)),
        "returnRequests": List<dynamic>.from(returnRequests.map((x) => x)),
        "addresses": List<dynamic>.from(addresses.map((x) => x)),
      };
}
