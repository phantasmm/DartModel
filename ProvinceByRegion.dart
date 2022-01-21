// To parse this JSON data, do
//
//     final provinceByRegion = provinceByRegionFromJson(jsonString);

import 'dart:convert';

ProvinceByRegion provinceByRegionFromJson(String str) => ProvinceByRegion.fromJson(json.decode(str));

String provinceByRegionToJson(ProvinceByRegion data) => json.encode(data.toJson());

class ProvinceByRegion {
    ProvinceByRegion({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory ProvinceByRegion.fromJson(Map<String, dynamic> json) => ProvinceByRegion(
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
