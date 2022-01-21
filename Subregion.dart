// To parse this JSON data, do
//
//     final subregion = subregionFromJson(jsonString);

import 'dart:convert';

Subregion subregionFromJson(String str) => Subregion.fromJson(json.decode(str));

String subregionToJson(Subregion data) => json.encode(data.toJson());

class Subregion {
    Subregion({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Subregion.fromJson(Map<String, dynamic> json) => Subregion(
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
