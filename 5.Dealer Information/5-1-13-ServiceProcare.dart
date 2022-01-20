// To parse this JSON data, do
//
//     final serviceProcare = serviceProcareFromJson(jsonString);

import 'dart:convert';

ServiceProcare serviceProcareFromJson(String str) => ServiceProcare.fromJson(json.decode(str));

String serviceProcareToJson(ServiceProcare data) => json.encode(data.toJson());

class ServiceProcare {
    ServiceProcare({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory ServiceProcare.fromJson(Map<String, dynamic> json) => ServiceProcare(
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

    int totalScore;
    int totalFullmark;
    double average;
    List<DataList> dataList;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalScore: json["totalScore"],
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
    int fullMark;
    double percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        score: json["score"],
        fullMark: json["fullMark"],
        percentage: json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "score": score,
        "fullMark": fullMark,
        "percentage": percentage,
    };
}
