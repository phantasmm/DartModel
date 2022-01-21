// To parse this JSON data, do
//
//     final subcategory = subcategoryFromJson(jsonString);

import 'dart:convert';

Subcategory subcategoryFromJson(String str) => Subcategory.fromJson(json.decode(str));

String subcategoryToJson(Subcategory data) => json.encode(data.toJson());

class Subcategory {
    Subcategory({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
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
