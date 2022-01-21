// To parse this JSON data, do
//
//     final dealerClass = dealerClassFromJson(jsonString);

import 'dart:convert';

DealerClass dealerClassFromJson(String str) => DealerClass.fromJson(json.decode(str));

String dealerClassToJson(DealerClass data) => json.encode(data.toJson());

class DealerClass {
    DealerClass({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory DealerClass.fromJson(Map<String, dynamic> json) => DealerClass(
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
