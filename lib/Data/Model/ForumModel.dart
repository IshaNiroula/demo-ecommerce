// To parse this JSON data, do
//
//     final forum = forumFromJson(jsonString);

import 'dart:convert';

List<Forum> forumFromJson(String str) =>
    List<Forum>.from(json.decode(str).map((x) => Forum.fromJson(x)));

String forumToJson(List<Forum> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Forum {
  int forumId;
  int forumGroupId;
  String name;
  String description;
  int numTopices;
  int numPosts;
  int lastTopicId;
  int lastPostId;
  DateTime lastPostTime;
  String displayOrder;
  DateTime createdOnUtc;
  DateTime updateOnUtc;
  int lastPostCustomerId;
  String ipAddress;

  Forum({
    this.forumId,
    this.forumGroupId,
    this.name,
    this.description,
    this.numTopices,
    this.numPosts,
    this.lastTopicId,
    this.lastPostId,
    this.lastPostTime,
    this.displayOrder,
    this.createdOnUtc,
    this.updateOnUtc,
    this.lastPostCustomerId,
    this.ipAddress,
  });

  factory Forum.fromJson(Map<String, dynamic> json) => Forum(
        forumId: json["forumId"],
        forumGroupId: json["forumGroupId"],
        name: json["name"],
        description: json["description"],
        numTopices: json["numTopices"],
        numPosts: json["numPosts"],
        lastTopicId: json["lastTopicId"],
        lastPostId: json["lastPostId"],
        lastPostTime: DateTime.parse(json["lastPostTime"]),
        displayOrder: json["displayOrder"],
        createdOnUtc: DateTime.parse(json["createdOnUtc"]),
        updateOnUtc: DateTime.parse(json["updateOnUtc"]),
        lastPostCustomerId: json["lastPostCustomerId"],
        ipAddress: json["ipAddress"],
      );

  Map<String, dynamic> toJson() => {
        "forumId": forumId,
        "forumGroupId": forumGroupId,
        "name": name,
        "description": description,
        "numTopices": numTopices,
        "numPosts": numPosts,
        "lastTopicId": lastTopicId,
        "lastPostId": lastPostId,
        "lastPostTime": lastPostTime.toIso8601String(),
        "displayOrder": displayOrder,
        "createdOnUtc": createdOnUtc.toIso8601String(),
        "updateOnUtc": updateOnUtc.toIso8601String(),
        "lastPostCustomerId": lastPostCustomerId,
        "ipAddress": ipAddress,
      };
}

class ForumGroup {
  int forumGroupId;
  String forumName;
  int displayOrder;
  DateTime createdOnUtc;
  DateTime updateOnUtc;
  List<dynamic> forums;

  ForumGroup({
    this.forumGroupId,
    this.forumName,
    this.displayOrder,
    this.createdOnUtc,
    this.updateOnUtc,
    this.forums,
  });

  factory ForumGroup.fromJson(Map<String, dynamic> json) => ForumGroup(
        forumGroupId: json["forumGroupId"],
        forumName: json["forumName"],
        displayOrder: json["displayOrder"],
        createdOnUtc: DateTime.parse(json["createdOnUtc"]),
        updateOnUtc: DateTime.parse(json["updateOnUtc"]),
        forums: List<dynamic>.from(json["forums"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "forumGroupId": forumGroupId,
        "forumName": forumName,
        "displayOrder": displayOrder,
        "createdOnUtc": createdOnUtc.toIso8601String(),
        "updateOnUtc": updateOnUtc.toIso8601String(),
        "forums": List<dynamic>.from(forums.map((x) => x)),
      };
}
