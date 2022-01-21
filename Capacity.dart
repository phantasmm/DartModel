// To parse this JSON data, do
//
//     final capacity = capacityFromJson(jsonString);

import 'dart:convert';

Capacity capacityFromJson(String str) => Capacity.fromJson(json.decode(str));

String capacityToJson(Capacity data) => json.encode(data.toJson());

class Capacity {
    Capacity({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Capacity.fromJson(Map<String, dynamic> json) => Capacity(
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
