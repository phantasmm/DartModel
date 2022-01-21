// To parse this JSON data, do
//
//     final segment = segmentFromJson(jsonString);

import 'dart:convert';

Segment segmentFromJson(String str) => Segment.fromJson(json.decode(str));

String segmentToJson(Segment data) => json.encode(data.toJson());

class Segment {
    Segment({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Segment.fromJson(Map<String, dynamic> json) => Segment(
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
