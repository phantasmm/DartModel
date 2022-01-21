// To parse this JSON data, do
//
//     final registrationGetSegment = registrationGetSegmentFromJson(jsonString);

import 'dart:convert';

RegistrationGetSegment registrationGetSegmentFromJson(String str) => RegistrationGetSegment.fromJson(json.decode(str));

String registrationGetSegmentToJson(RegistrationGetSegment data) => json.encode(data.toJson());

class RegistrationGetSegment {
    RegistrationGetSegment({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory RegistrationGetSegment.fromJson(Map<String, dynamic> json) => RegistrationGetSegment(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        statusCode: json["statusCode"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
        "statusCode": statusCode,
    };
}

class Data {
    Data({
        this.dataList,
    });

    List<DataList> dataList;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        dataList: List<DataList>.from(json["dataList"].map((x) => DataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dataList": List<dynamic>.from(dataList.map((x) => x.toJson())),
    };
}

class DataList {
    DataList({
        this.title,
        this.percentage,
        this.subData,
    });

    String title;
    double percentage;
    List<SubDatum> subData;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        percentage: json["percentage"].toDouble(),
        subData: List<SubDatum>.from(json["subData"].map((x) => SubDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "percentage": percentage,
        "subData": List<dynamic>.from(subData.map((x) => x.toJson())),
    };
}

class SubDatum {
    SubDatum({
        this.title,
        this.value,
        this.percentage,
    });

    String title;
    double value;
    double percentage;

    factory SubDatum.fromJson(Map<String, dynamic> json) => SubDatum(
        title: json["title"],
        value: json["value"].toDouble(),
        percentage: json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
        "percentage": percentage,
    };
}
