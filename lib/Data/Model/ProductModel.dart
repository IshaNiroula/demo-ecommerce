// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int productId;
  int productTypeId;
  int parentGroupedProductId;
  String productName;
  String shortDescription;
  String fullDescription;
  String adminComment;
  int productTemplateId;
  int vendorId;
  bool showOnHomePage;
  String metaDescription;
  String metaTitle;
  String metaKeywords;
  bool allowCustomerReviews;
  int approvedRatingSum;
  int notApprovedRatingSum;
  int approvedTotalRating;
  int notApprovedTotalRating;
  bool subjectToAcl;
  bool limitedToStores;
  String sku;
  String manufacturerPartNumber;
  String gtin;
  bool isGiftCard;
  int giftCardTypeId;
  int overriddenGiftCardAmount;
  bool requireOtherProducts;
  bool automaticallyAddRequiredProducts;
  bool isDownload;
  int downloadId;
  bool unlimitedDownloads;
  int maxNumberOfDownloads;
  int downloadExpirationDays;
  int downloadActivationTypeId;
  bool hasSampleDownload;
  int sampleDownloadId;
  bool hasUserAgreement;
  String userAgreementText;
  bool isRecurring;
  int recurringCycleLength;
  int recurringCyclePeriodId;
  int recurringTotalCycles;
  bool isRental;
  int rentalPriceLength;
  int rentalPricePeriodId;
  bool isShipEnabled;
  bool isFreeShipping;
  bool shipSeparately;
  int additionalShippingCharge;
  int deliveryDateId;
  bool isTaxExempt;
  int taxCategoryId;
  bool isTelecommunicationsOrBroadcastingOrElectronicServices;
  int manageInventoryMethodId;
  int productAvailabilityRangeId;
  bool useMultipleWarehouses;
  int warehouseId;
  int stockQuantity;
  bool displayStockAvailability;
  bool displayStockQuantity;
  int minStockQuantity;
  int lowStockActivityId;
  int notifyAdminForQuantityBelow;
  int backorderModeId;
  bool allowBackInStockSubscriptions;
  int orderMinimumQuantity;
  int orderMaxmimunQuantity;
  String allowedQuantities;
  bool allowAddingOnlyExistingAttributeCombinations;
  bool notReturnable;
  bool disableBuyButton;
  bool disableWishlistButton;
  bool availabelPreOrder;
  DateTime preOrderAvailablityStartDate;
  bool callForPrice;
  int price;
  int oldPrice;
  int productCost;
  bool customerEntersPrice;
  int minimumCustomerEnteredPrice;
  int maximumCustomerEnteredPrice;
  bool basepriceEnabled;
  int basepriceAmount;
  int basepriceUnitId;
  int basepriceBaseAmount;
  int basepriceBaseUnitId;
  bool markAsNew;
  DateTime markAsNewStartDateTimeUtc;
  DateTime markAsNewEndDateTimeUtc;
  bool hasTierPrices;
  bool hasDiscountsApplied;
  int weight;
  int length;
  int width;
  int height;
  DateTime availableStartDateTimeUtc;
  DateTime availableEndDateTimeUtc;
  int displayOrder;
  bool published;
  bool deleted;
  DateTime createdOnUtc;
  DateTime updatedOnUtc;
  String photo;
  int productType;
  List<dynamic> productCategories;
  List<dynamic> productManufacturers;
  List<dynamic> productReviews;
  List<dynamic> productSpecificationAttributes;
  List<dynamic> productProductTagMappings;
  List<dynamic> productAttributeMappings;
  List<dynamic> productAttributeCombinations;
  List<dynamic> tierPrices;
  List<dynamic> appliedDiscounts;
  List<dynamic> discountProductMappings;
  List<dynamic> productWarehouseInventory;

  Product({
    this.productId,
    this.productTypeId,
    this.parentGroupedProductId,
    this.productName,
    this.shortDescription,
    this.fullDescription,
    this.adminComment,
    this.productTemplateId,
    this.vendorId,
    this.showOnHomePage,
    this.metaDescription,
    this.metaTitle,
    this.metaKeywords,
    this.allowCustomerReviews,
    this.approvedRatingSum,
    this.notApprovedRatingSum,
    this.approvedTotalRating,
    this.notApprovedTotalRating,
    this.subjectToAcl,
    this.limitedToStores,
    this.sku,
    this.manufacturerPartNumber,
    this.gtin,
    this.isGiftCard,
    this.giftCardTypeId,
    this.overriddenGiftCardAmount,
    this.requireOtherProducts,
    this.automaticallyAddRequiredProducts,
    this.isDownload,
    this.downloadId,
    this.unlimitedDownloads,
    this.maxNumberOfDownloads,
    this.downloadExpirationDays,
    this.downloadActivationTypeId,
    this.hasSampleDownload,
    this.sampleDownloadId,
    this.hasUserAgreement,
    this.userAgreementText,
    this.isRecurring,
    this.recurringCycleLength,
    this.recurringCyclePeriodId,
    this.recurringTotalCycles,
    this.isRental,
    this.rentalPriceLength,
    this.rentalPricePeriodId,
    this.isShipEnabled,
    this.isFreeShipping,
    this.shipSeparately,
    this.additionalShippingCharge,
    this.deliveryDateId,
    this.isTaxExempt,
    this.taxCategoryId,
    this.isTelecommunicationsOrBroadcastingOrElectronicServices,
    this.manageInventoryMethodId,
    this.productAvailabilityRangeId,
    this.useMultipleWarehouses,
    this.warehouseId,
    this.stockQuantity,
    this.displayStockAvailability,
    this.displayStockQuantity,
    this.minStockQuantity,
    this.lowStockActivityId,
    this.notifyAdminForQuantityBelow,
    this.backorderModeId,
    this.allowBackInStockSubscriptions,
    this.orderMinimumQuantity,
    this.orderMaxmimunQuantity,
    this.allowedQuantities,
    this.allowAddingOnlyExistingAttributeCombinations,
    this.notReturnable,
    this.disableBuyButton,
    this.disableWishlistButton,
    this.availabelPreOrder,
    this.preOrderAvailablityStartDate,
    this.callForPrice,
    this.price,
    this.oldPrice,
    this.productCost,
    this.customerEntersPrice,
    this.minimumCustomerEnteredPrice,
    this.maximumCustomerEnteredPrice,
    this.basepriceEnabled,
    this.basepriceAmount,
    this.basepriceUnitId,
    this.basepriceBaseAmount,
    this.basepriceBaseUnitId,
    this.markAsNew,
    this.markAsNewStartDateTimeUtc,
    this.markAsNewEndDateTimeUtc,
    this.hasTierPrices,
    this.hasDiscountsApplied,
    this.weight,
    this.length,
    this.width,
    this.height,
    this.availableStartDateTimeUtc,
    this.availableEndDateTimeUtc,
    this.displayOrder,
    this.published,
    this.deleted,
    this.createdOnUtc,
    this.updatedOnUtc,
    this.photo,
    this.productType,
    this.productCategories,
    this.productManufacturers,
    this.productReviews,
    this.productSpecificationAttributes,
    this.productProductTagMappings,
    this.productAttributeMappings,
    this.productAttributeCombinations,
    this.tierPrices,
    this.appliedDiscounts,
    this.discountProductMappings,
    this.productWarehouseInventory,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["productId"],
        productTypeId: json["productTypeId"],
        parentGroupedProductId: json["parentGroupedProductId"],
        productName: json["productName"],
        shortDescription: json["shortDescription"],
        fullDescription: json["fullDescription"],
        adminComment: json["adminComment"],
        productTemplateId: json["productTemplateId"],
        vendorId: json["vendorId"],
        showOnHomePage: json["showOnHomePage"],
        metaDescription: json["metaDescription"],
        metaTitle: json["metaTitle"],
        metaKeywords: json["metaKeywords"],
        allowCustomerReviews: json["allowCustomerReviews"],
        approvedRatingSum: json["approvedRatingSum"],
        notApprovedRatingSum: json["notApprovedRatingSum"],
        approvedTotalRating: json["approvedTotalRating"],
        notApprovedTotalRating: json["notApprovedTotalRating"],
        subjectToAcl: json["subjectToAcl"],
        limitedToStores: json["limitedToStores"],
        sku: json["sku"],
        manufacturerPartNumber: json["manufacturerPartNumber"],
        gtin: json["gtin"],
        isGiftCard: json["isGiftCard"],
        giftCardTypeId: json["giftCardTypeId"],
        overriddenGiftCardAmount: json["overriddenGiftCardAmount"],
        requireOtherProducts: json["requireOtherProducts"],
        automaticallyAddRequiredProducts:
            json["automaticallyAddRequiredProducts"],
        isDownload: json["isDownload"],
        downloadId: json["downloadId"],
        unlimitedDownloads: json["unlimitedDownloads"],
        maxNumberOfDownloads: json["maxNumberOfDownloads"],
        downloadExpirationDays: json["downloadExpirationDays"],
        downloadActivationTypeId: json["downloadActivationTypeId"],
        hasSampleDownload: json["hasSampleDownload"],
        sampleDownloadId: json["sampleDownloadId"],
        hasUserAgreement: json["hasUserAgreement"],
        userAgreementText: json["userAgreementText"],
        isRecurring: json["isRecurring"],
        recurringCycleLength: json["recurringCycleLength"],
        recurringCyclePeriodId: json["recurringCyclePeriodId"],
        recurringTotalCycles: json["recurringTotalCycles"],
        isRental: json["isRental"],
        rentalPriceLength: json["rentalPriceLength"],
        rentalPricePeriodId: json["rentalPricePeriodId"],
        isShipEnabled: json["isShipEnabled"],
        isFreeShipping: json["isFreeShipping"],
        shipSeparately: json["shipSeparately"],
        additionalShippingCharge: json["additionalShippingCharge"],
        deliveryDateId: json["deliveryDateId"],
        isTaxExempt: json["isTaxExempt"],
        taxCategoryId: json["taxCategoryId"],
        isTelecommunicationsOrBroadcastingOrElectronicServices:
            json["isTelecommunicationsOrBroadcastingOrElectronicServices"],
        manageInventoryMethodId: json["manageInventoryMethodId"],
        productAvailabilityRangeId: json["productAvailabilityRangeId"],
        useMultipleWarehouses: json["useMultipleWarehouses"],
        warehouseId: json["warehouseId"],
        stockQuantity: json["stockQuantity"],
        displayStockAvailability: json["displayStockAvailability"],
        displayStockQuantity: json["displayStockQuantity"],
        minStockQuantity: json["minStockQuantity"],
        lowStockActivityId: json["lowStockActivityId"],
        notifyAdminForQuantityBelow: json["notifyAdminForQuantityBelow"],
        backorderModeId: json["backorderModeId"],
        allowBackInStockSubscriptions: json["allowBackInStockSubscriptions"],
        orderMinimumQuantity: json["orderMinimumQuantity"],
        orderMaxmimunQuantity: json["orderMaxmimunQuantity"],
        allowedQuantities: json["allowedQuantities"],
        allowAddingOnlyExistingAttributeCombinations:
            json["allowAddingOnlyExistingAttributeCombinations"],
        notReturnable: json["notReturnable"],
        disableBuyButton: json["disableBuyButton"],
        disableWishlistButton: json["disableWishlistButton"],
        availabelPreOrder: json["availabelPreOrder"],
        preOrderAvailablityStartDate:
            DateTime.parse(json["preOrderAvailablityStartDate"]),
        callForPrice: json["callForPrice"],
        price: json["price"],
        oldPrice: json["oldPrice"],
        productCost: json["productCost"],
        customerEntersPrice: json["customerEntersPrice"],
        minimumCustomerEnteredPrice: json["minimumCustomerEnteredPrice"],
        maximumCustomerEnteredPrice: json["maximumCustomerEnteredPrice"],
        basepriceEnabled: json["basepriceEnabled"],
        basepriceAmount: json["basepriceAmount"],
        basepriceUnitId: json["basepriceUnitId"],
        basepriceBaseAmount: json["basepriceBaseAmount"],
        basepriceBaseUnitId: json["basepriceBaseUnitId"],
        markAsNew: json["markAsNew"],
        markAsNewStartDateTimeUtc:
            DateTime.parse(json["markAsNewStartDateTimeUtc"]),
        markAsNewEndDateTimeUtc:
            DateTime.parse(json["markAsNewEndDateTimeUtc"]),
        hasTierPrices: json["hasTierPrices"],
        hasDiscountsApplied: json["hasDiscountsApplied"],
        weight: json["weight"],
        length: json["length"],
        width: json["width"],
        height: json["height"],
        availableStartDateTimeUtc:
            DateTime.parse(json["availableStartDateTimeUtc"]),
        availableEndDateTimeUtc:
            DateTime.parse(json["availableEndDateTimeUtc"]),
        displayOrder: json["displayOrder"],
        published: json["published"],
        deleted: json["deleted"],
        createdOnUtc: DateTime.parse(json["createdOnUtc"]),
        updatedOnUtc: DateTime.parse(json["updatedOnUtc"]),
        photo: json["photo"],
        productType: json["productType"],
        productCategories:
            List<dynamic>.from(json["productCategories"].map((x) => x)),
        productManufacturers:
            List<dynamic>.from(json["productManufacturers"].map((x) => x)),
        productReviews:
            List<dynamic>.from(json["productReviews"].map((x) => x)),
        productSpecificationAttributes: List<dynamic>.from(
            json["productSpecificationAttributes"].map((x) => x)),
        productProductTagMappings:
            List<dynamic>.from(json["productProductTagMappings"].map((x) => x)),
        productAttributeMappings:
            List<dynamic>.from(json["productAttributeMappings"].map((x) => x)),
        productAttributeCombinations: List<dynamic>.from(
            json["productAttributeCombinations"].map((x) => x)),
        tierPrices: List<dynamic>.from(json["tierPrices"].map((x) => x)),
        appliedDiscounts:
            List<dynamic>.from(json["appliedDiscounts"].map((x) => x)),
        discountProductMappings:
            List<dynamic>.from(json["discountProductMappings"].map((x) => x)),
        productWarehouseInventory:
            List<dynamic>.from(json["productWarehouseInventory"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "productTypeId": productTypeId,
        "parentGroupedProductId": parentGroupedProductId,
        "productName": productName,
        "shortDescription": shortDescription,
        "fullDescription": fullDescription,
        "adminComment": adminComment,
        "productTemplateId": productTemplateId,
        "vendorId": vendorId,
        "showOnHomePage": showOnHomePage,
        "metaDescription": metaDescription,
        "metaTitle": metaTitle,
        "metaKeywords": metaKeywords,
        "allowCustomerReviews": allowCustomerReviews,
        "approvedRatingSum": approvedRatingSum,
        "notApprovedRatingSum": notApprovedRatingSum,
        "approvedTotalRating": approvedTotalRating,
        "notApprovedTotalRating": notApprovedTotalRating,
        "subjectToAcl": subjectToAcl,
        "limitedToStores": limitedToStores,
        "sku": sku,
        "manufacturerPartNumber": manufacturerPartNumber,
        "gtin": gtin,
        "isGiftCard": isGiftCard,
        "giftCardTypeId": giftCardTypeId,
        "overriddenGiftCardAmount": overriddenGiftCardAmount,
        "requireOtherProducts": requireOtherProducts,
        "automaticallyAddRequiredProducts": automaticallyAddRequiredProducts,
        "isDownload": isDownload,
        "downloadId": downloadId,
        "unlimitedDownloads": unlimitedDownloads,
        "maxNumberOfDownloads": maxNumberOfDownloads,
        "downloadExpirationDays": downloadExpirationDays,
        "downloadActivationTypeId": downloadActivationTypeId,
        "hasSampleDownload": hasSampleDownload,
        "sampleDownloadId": sampleDownloadId,
        "hasUserAgreement": hasUserAgreement,
        "userAgreementText": userAgreementText,
        "isRecurring": isRecurring,
        "recurringCycleLength": recurringCycleLength,
        "recurringCyclePeriodId": recurringCyclePeriodId,
        "recurringTotalCycles": recurringTotalCycles,
        "isRental": isRental,
        "rentalPriceLength": rentalPriceLength,
        "rentalPricePeriodId": rentalPricePeriodId,
        "isShipEnabled": isShipEnabled,
        "isFreeShipping": isFreeShipping,
        "shipSeparately": shipSeparately,
        "additionalShippingCharge": additionalShippingCharge,
        "deliveryDateId": deliveryDateId,
        "isTaxExempt": isTaxExempt,
        "taxCategoryId": taxCategoryId,
        "isTelecommunicationsOrBroadcastingOrElectronicServices":
            isTelecommunicationsOrBroadcastingOrElectronicServices,
        "manageInventoryMethodId": manageInventoryMethodId,
        "productAvailabilityRangeId": productAvailabilityRangeId,
        "useMultipleWarehouses": useMultipleWarehouses,
        "warehouseId": warehouseId,
        "stockQuantity": stockQuantity,
        "displayStockAvailability": displayStockAvailability,
        "displayStockQuantity": displayStockQuantity,
        "minStockQuantity": minStockQuantity,
        "lowStockActivityId": lowStockActivityId,
        "notifyAdminForQuantityBelow": notifyAdminForQuantityBelow,
        "backorderModeId": backorderModeId,
        "allowBackInStockSubscriptions": allowBackInStockSubscriptions,
        "orderMinimumQuantity": orderMinimumQuantity,
        "orderMaxmimunQuantity": orderMaxmimunQuantity,
        "allowedQuantities": allowedQuantities,
        "allowAddingOnlyExistingAttributeCombinations":
            allowAddingOnlyExistingAttributeCombinations,
        "notReturnable": notReturnable,
        "disableBuyButton": disableBuyButton,
        "disableWishlistButton": disableWishlistButton,
        "availabelPreOrder": availabelPreOrder,
        "preOrderAvailablityStartDate":
            preOrderAvailablityStartDate.toIso8601String(),
        "callForPrice": callForPrice,
        "price": price,
        "oldPrice": oldPrice,
        "productCost": productCost,
        "customerEntersPrice": customerEntersPrice,
        "minimumCustomerEnteredPrice": minimumCustomerEnteredPrice,
        "maximumCustomerEnteredPrice": maximumCustomerEnteredPrice,
        "basepriceEnabled": basepriceEnabled,
        "basepriceAmount": basepriceAmount,
        "basepriceUnitId": basepriceUnitId,
        "basepriceBaseAmount": basepriceBaseAmount,
        "basepriceBaseUnitId": basepriceBaseUnitId,
        "markAsNew": markAsNew,
        "markAsNewStartDateTimeUtc":
            markAsNewStartDateTimeUtc.toIso8601String(),
        "markAsNewEndDateTimeUtc": markAsNewEndDateTimeUtc.toIso8601String(),
        "hasTierPrices": hasTierPrices,
        "hasDiscountsApplied": hasDiscountsApplied,
        "weight": weight,
        "length": length,
        "width": width,
        "height": height,
        "availableStartDateTimeUtc":
            availableStartDateTimeUtc.toIso8601String(),
        "availableEndDateTimeUtc": availableEndDateTimeUtc.toIso8601String(),
        "displayOrder": displayOrder,
        "published": published,
        "deleted": deleted,
        "createdOnUtc": createdOnUtc.toIso8601String(),
        "updatedOnUtc": updatedOnUtc.toIso8601String(),
        "photo": photo,
        "productType": productType,
        "productCategories":
            List<dynamic>.from(productCategories.map((x) => x)),
        "productManufacturers":
            List<dynamic>.from(productManufacturers.map((x) => x)),
        "productReviews": List<dynamic>.from(productReviews.map((x) => x)),
        "productSpecificationAttributes":
            List<dynamic>.from(productSpecificationAttributes.map((x) => x)),
        "productProductTagMappings":
            List<dynamic>.from(productProductTagMappings.map((x) => x)),
        "productAttributeMappings":
            List<dynamic>.from(productAttributeMappings.map((x) => x)),
        "productAttributeCombinations":
            List<dynamic>.from(productAttributeCombinations.map((x) => x)),
        "tierPrices": List<dynamic>.from(tierPrices.map((x) => x)),
        "appliedDiscounts": List<dynamic>.from(appliedDiscounts.map((x) => x)),
        "discountProductMappings":
            List<dynamic>.from(discountProductMappings.map((x) => x)),
        "productWarehouseInventory":
            List<dynamic>.from(productWarehouseInventory.map((x) => x)),
      };
}
