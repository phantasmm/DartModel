// To parse this JSON data, do
//
//     final provinceBySubregion = provinceBySubregionFromJson(jsonString);

import 'dart:convert';

ProvinceBySubregion provinceBySubregionFromJson(String str) => ProvinceBySubregion.fromJson(json.decode(str));

String provinceBySubregionToJson(ProvinceBySubregion data) => json.encode(data.toJson());

class ProvinceBySubregion {
    ProvinceBySubregion({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory ProvinceBySubregion.fromJson(Map<String, dynamic> json) => ProvinceBySubregion(
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
