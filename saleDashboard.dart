// To parse this JSON data, do
//
//     final saleDashboard = saleDashboardFromJson(jsonString);

import 'dart:convert';

SaleDashboard saleDashboardFromJson(String str) => SaleDashboard.fromJson(json.decode(str));

String saleDashboardToJson(SaleDashboard data) => json.encode(data.toJson());

class SaleDashboard {
    SaleDashboard({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory SaleDashboard.fromJson(Map<String, dynamic> json) => SaleDashboard(
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
        this.stdAchievement,
        this.stuAchievement,
        this.partsAchievement,
        this.budgetAchievement,
    });

    Achievement stdAchievement;
    Achievement stuAchievement;
    Achievement partsAchievement;
    Achievement budgetAchievement;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        stdAchievement: Achievement.fromJson(json["STDAchievement"]),
        stuAchievement: Achievement.fromJson(json["STUAchievement"]),
        partsAchievement: Achievement.fromJson(json["partsAchievement"]),
        budgetAchievement: Achievement.fromJson(json["budgetAchievement"]),
    );

    Map<String, dynamic> toJson() => {
        "STDAchievement": stdAchievement.toJson(),
        "STUAchievement": stuAchievement.toJson(),
        "partsAchievement": partsAchievement.toJson(),
        "budgetAchievement": budgetAchievement.toJson(),
    };
}

class Achievement {
    Achievement({
        this.target,
        this.actual,
        this.percentage,
    });

    int target;
    int actual;
    int percentage;

    factory Achievement.fromJson(Map<String, dynamic> json) => Achievement(
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
