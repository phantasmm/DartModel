// To parse this JSON data, do
//
//     final dealer = dealerFromJson(jsonString);

import 'dart:convert';

Dealer dealerFromJson(String str) => Dealer.fromJson(json.decode(str));

String dealerToJson(Dealer data) => json.encode(data.toJson());

class Dealer {
    Dealer({
        this.data,
        this.message,
        this.statusCode,
    });

    List<String> data;
    String message;
    int statusCode;

    factory Dealer.fromJson(Map<String, dynamic> json) => Dealer(
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
