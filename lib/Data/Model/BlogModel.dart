// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

List<Blog> blogFromJson(String str) =>
    List<Blog>.from(json.decode(str).map((x) => Blog.fromJson(x)));

String blogToJson(List<Blog> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog {
  int blogId;
  String blogName;
  String title;
  String image;
  String subTitleOrMetaTitle;
  String metaDescription;
  String body;
  String bodyOverView;
  bool allowComments;
  int numberOfComments;
  String tag;
  DateTime dateCreation;
  DateTime dateModified;
  int languageId;
  String ipAddress;
  List<dynamic> blogComments;

  Blog({
    this.blogId,
    this.blogName,
    this.title,
    this.image,
    this.subTitleOrMetaTitle,
    this.metaDescription,
    this.body,
    this.bodyOverView,
    this.allowComments,
    this.numberOfComments,
    this.tag,
    this.dateCreation,
    this.dateModified,
    this.languageId,
    this.ipAddress,
    this.blogComments,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        blogId: json["blogId"],
        blogName: json["blogName"],
        title: json["title"],
        image: json["image"],
        subTitleOrMetaTitle: json["subTitleOrMetaTitle"],
        metaDescription: json["metaDescription"],
        body: json["body"],
        bodyOverView: json["bodyOverView"],
        allowComments: json["allowComments"],
        numberOfComments: json["numberOfComments"],
        tag: json["tag"],
        dateCreation: DateTime.parse(json["dateCreation"]),
        dateModified: DateTime.parse(json["dateModified"]),
        languageId: json["languageId"],
        ipAddress: json["ipAddress"],
        blogComments: List<dynamic>.from(json["blogComments"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "blogId": blogId,
        "blogName": blogName,
        "title": title,
        "image": image,
        "subTitleOrMetaTitle": subTitleOrMetaTitle,
        "metaDescription": metaDescription,
        "body": body,
        "bodyOverView": bodyOverView,
        "allowComments": allowComments,
        "numberOfComments": numberOfComments,
        "tag": tag,
        "dateCreation": dateCreation.toIso8601String(),
        "dateModified": dateModified.toIso8601String(),
        "languageId": languageId,
        "ipAddress": ipAddress,
        "blogComments": List<dynamic>.from(blogComments.map((x) => x)),
      };
}

class BlogComment {
  int blogCommentId;
  int customerId;
  String commentText;
  bool isApproved;
  int storeId;
  int blogId;
  DateTime createdOnUtc;

  BlogComment({
    this.blogCommentId,
    this.customerId,
    this.commentText,
    this.isApproved,
    this.storeId,
    this.blogId,
    this.createdOnUtc,
  });

  factory BlogComment.fromJson(Map<String, dynamic> json) => BlogComment(
        blogCommentId: json["blogCommentId"],
        customerId: json["customerId"],
        commentText: json["commentText"],
        isApproved: json["isApproved"],
        storeId: json["storeId"],
        blogId: json["blogId"],
        createdOnUtc: DateTime.parse(json["createdOnUtc"]),
      );

  Map<String, dynamic> toJson() => {
        "blogCommentId": blogCommentId,
        "customerId": customerId,
        "commentText": commentText,
        "isApproved": isApproved,
        "storeId": storeId,
        "blogId": blogId,
        "createdOnUtc": createdOnUtc.toIso8601String(),
      };
}
