// To parse this JSON data, do
//
//     final modelFromSubcategory = modelFromSubcategoryFromJson(jsonString);

import 'dart:convert';

ModelFromSubcategory modelFromSubcategoryFromJson(String str) => ModelFromSubcategory.fromJson(json.decode(str));

String modelFromSubcategoryToJson(ModelFromSubcategory data) => json.encode(data.toJson());

class ModelFromSubcategory {
    ModelFromSubcategory({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory ModelFromSubcategory.fromJson(Map<String, dynamic> json) => ModelFromSubcategory(
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
