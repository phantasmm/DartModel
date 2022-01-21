// To parse this JSON data, do
//
//     final mcType = mcTypeFromJson(jsonString);

import 'dart:convert';

McType mcTypeFromJson(String str) => McType.fromJson(json.decode(str));

String mcTypeToJson(McType data) => json.encode(data.toJson());

class McType {
    McType({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory McType.fromJson(Map<String, dynamic> json) => McType(
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
