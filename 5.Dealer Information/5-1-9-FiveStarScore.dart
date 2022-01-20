// To parse this JSON data, do
//
//     final fiveStarScore = fiveStarScoreFromJson(jsonString);

import 'dart:convert';

FiveStarScore fiveStarScoreFromJson(String str) => FiveStarScore.fromJson(json.decode(str));

String fiveStarScoreToJson(FiveStarScore data) => json.encode(data.toJson());

class FiveStarScore {
    FiveStarScore({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory FiveStarScore.fromJson(Map<String, dynamic> json) => FiveStarScore(
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
    double percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        score: json["score"],
        fullMark: json["fullMark"].toDouble(),
        percentage: json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "score": score,
        "fullMark": fullMark,
        "percentage": percentage,
    };
}
