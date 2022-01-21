// To parse this JSON data, do
//
//     final subsegment = subsegmentFromJson(jsonString);

import 'dart:convert';

Subsegment subsegmentFromJson(String str) => Subsegment.fromJson(json.decode(str));

String subsegmentToJson(Subsegment data) => json.encode(data.toJson());

class Subsegment {
    Subsegment({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Subsegment.fromJson(Map<String, dynamic> json) => Subsegment(
        data: List<String>.from(json["data"].map((x) => x)),
        message: json["message"],
        statusCode: json["statusCode"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x)),
        "message": message,
        "statusCode": statusCode,
    };
}
