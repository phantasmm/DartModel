// To parse this JSON data, do
//
//     final stdByModel = stdByModelFromJson(jsonString);

import 'dart:convert';

StdByModel stdByModelFromJson(String str) => StdByModel.fromJson(json.decode(str));

String stdByModelToJson(StdByModel data) => json.encode(data.toJson());

class StdByModel {
    StdByModel({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory StdByModel.fromJson(Map<String, dynamic> json) => StdByModel(
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
        this.thisPeriod,
        this.prevPeriod,
        this.lastYear,
    });

    String title;
    LastYear thisPeriod;
    LastYear prevPeriod;
    LastYear lastYear;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        thisPeriod: LastYear.fromJson(json["thisPeriod"]),
        prevPeriod: LastYear.fromJson(json["prevPeriod"]),
        lastYear: LastYear.fromJson(json["lastYear"]),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "thisPeriod": thisPeriod.toJson(),
        "prevPeriod": prevPeriod.toJson(),
        "lastYear": lastYear.toJson(),
    };
}

class LastYear {
    LastYear({
        this.target,
        this.actual,
        this.percentage,
    });

    int target;
    int actual;
    int percentage;

    factory LastYear.fromJson(Map<String, dynamic> json) => LastYear(
        target: json["target"],
        actual: json["actual"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "target": target,
        "actual": actual,
        "percentage": percentage,
    };
}
