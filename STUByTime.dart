// To parse this JSON data, do
//
//     final stuByTime = stuByTimeFromJson(jsonString);

import 'dart:convert';

StuByTime stuByTimeFromJson(String str) => StuByTime.fromJson(json.decode(str));

String stuByTimeToJson(StuByTime data) => json.encode(data.toJson());

class StuByTime {
    StuByTime({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory StuByTime.fromJson(Map<String, dynamic> json) => StuByTime(
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
        this.target,
        this.actual,
        this.percentage,
    });

    String title;
    int target;
    int actual;
    int percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        target: json["target"],
        actual: json["actual"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "target": target,
        "actual": actual,
        "percentage": percentage,
    };
}
