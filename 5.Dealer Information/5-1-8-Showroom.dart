// To parse this JSON data, do
//
//     final showroom = showroomFromJson(jsonString);

import 'dart:convert';

Showroom showroomFromJson(String str) => Showroom.fromJson(json.decode(str));

String showroomToJson(Showroom data) => json.encode(data.toJson());

class Showroom {
    Showroom({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory Showroom.fromJson(Map<String, dynamic> json) => Showroom(
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
        this.totalScore,
        this.totalFullmark,
        this.average,
        this.dataList,
    });

    double totalScore;
    int totalFullmark;
    double average;
    List<DataList> dataList;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalScore: json["totalScore"].toDouble(),
        totalFullmark: json["totalFullmark"],
        average: json["average"].toDouble(),
        dataList: List<DataList>.from(json["dataList"].map((x) => DataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalScore": totalScore,
        "totalFullmark": totalFullmark,
        "average": average,
        "dataList": List<dynamic>.from(dataList.map((x) => x.toJson())),
    };
}

class DataList {
    DataList({
        this.title,
        this.score,
        this.fullMark,
        this.percentage,
    });

    String title;
    int score;
    double fullMark;
    int percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        score: json["score"],
        fullMark: json["fullMark"].toDouble(),
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "score": score,
        "fullMark": fullMark,
        "percentage": percentage,
    };
}
