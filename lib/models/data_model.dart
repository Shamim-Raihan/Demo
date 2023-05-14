import 'dart:convert';

List<DataResponse> dataResponseFromJson(String str) => List<DataResponse>.from(
    json.decode(str).map((x) => DataResponse.fromJson(x)));

String dataResponseToJson(List<DataResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataResponse {
  int? userId;
  int? id;
  String? title;
  String? body;

  DataResponse({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory DataResponse.fromJson(Map<String, dynamic> json) => DataResponse(
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
