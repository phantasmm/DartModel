// To parse this JSON data, do
//
//     final region = regionFromJson(jsonString);

import 'dart:convert';

Region regionFromJson(String str) => Region.fromJson(json.decode(str));

String regionToJson(Region data) => json.encode(data.toJson());

class Region {
    Region({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Region.fromJson(Map<String, dynamic> json) => Region(
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
