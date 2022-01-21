// To parse this JSON data, do
//
//     final area = areaFromJson(jsonString);

import 'dart:convert';

Area areaFromJson(String str) => Area.fromJson(json.decode(str));

String areaToJson(Area data) => json.encode(data.toJson());

class Area {
    Area({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
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
