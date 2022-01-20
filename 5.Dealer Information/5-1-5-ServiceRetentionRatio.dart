// To parse this JSON data, do
//
//     final serviceRetentionRatio = serviceRetentionRatioFromJson(jsonString);

import 'dart:convert';

ServiceRetentionRatio serviceRetentionRatioFromJson(String str) => ServiceRetentionRatio.fromJson(json.decode(str));

String serviceRetentionRatioToJson(ServiceRetentionRatio data) => json.encode(data.toJson());

class ServiceRetentionRatio {
    ServiceRetentionRatio({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory ServiceRetentionRatio.fromJson(Map<String, dynamic> json) => ServiceRetentionRatio(
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
        this.month,
        this.firstRetention,
        this.secondRetention,
        this.thirdRetention,
        this.fourthRetention,
        this.targetAverage,
    });

    String month;
    FirstRetention firstRetention;
    FirstRetention secondRetention;
    FirstRetention thirdRetention;
    FirstRetention fourthRetention;
    FirstRetention targetAverage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        month: json["month"],
        firstRetention: FirstRetention.fromJson(json["firstRetention"]),
        secondRetention: FirstRetention.fromJson(json["secondRetention"]),
        thirdRetention: FirstRetention.fromJson(json["thirdRetention"]),
        fourthRetention: FirstRetention.fromJson(json["fourthRetention"]),
        targetAverage: FirstRetention.fromJson(json["targetAverage"]),
    );

    Map<String, dynamic> toJson() => {
        "month": month,
        "firstRetention": firstRetention.toJson(),
        "secondRetention": secondRetention.toJson(),
        "thirdRetention": thirdRetention.toJson(),
        "fourthRetention": fourthRetention.toJson(),
        "targetAverage": targetAverage.toJson(),
    };
}

class FirstRetention {
    FirstRetention({
        this.target,
        this.actual,
        this.percentage,
    });

    int target;
    int actual;
    int percentage;

    factory FirstRetention.fromJson(Map<String, dynamic> json) => FirstRetention(
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
