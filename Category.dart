// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

class Category {
    Category({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Category.fromJson(Map<String, dynamic> json) => Category(
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
