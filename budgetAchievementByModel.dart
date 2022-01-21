// To parse this JSON data, do
//
//     final budgetAchievementByModel = budgetAchievementByModelFromJson(jsonString);

import 'dart:convert';

BudgetAchievementByModel budgetAchievementByModelFromJson(String str) => BudgetAchievementByModel.fromJson(json.decode(str));

String budgetAchievementByModelToJson(BudgetAchievementByModel data) => json.encode(data.toJson());

class BudgetAchievementByModel {
    BudgetAchievementByModel({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory BudgetAchievementByModel.fromJson(Map<String, dynamic> json) => BudgetAchievementByModel(
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
        this.actual,
        this.target,
        this.percentage,
    });

    String title;
    int actual;
    int target;
    int percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        actual: json["actual"],
        target: json["target"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "actual": actual,
        "target": target,
        "percentage": percentage,
    };
}
