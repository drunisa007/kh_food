
import 'dart:convert';

List<PostPagiModel> postPagiModelFromJson(String str) => List<PostPagiModel>.from(json.decode(str).map((x) => PostPagiModel.fromJson(x)));

String postPagiModelToJson(List<PostPagiModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
