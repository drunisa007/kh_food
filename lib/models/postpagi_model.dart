
import 'package:meta/meta.dart';
import 'dart:convert';

PostPagiModel postPagiModelFromJson(String str) => PostPagiModel.fromJson(json.decode(str));

String postPagiModelToJson(PostPagiModel data) => json.encode(data.toJson());

class PostPagiModel {
  PostPagiModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory PostPagiModel.fromJson(Map<String, dynamic> json) => PostPagiModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
