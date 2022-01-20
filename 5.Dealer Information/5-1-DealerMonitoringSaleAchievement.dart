// To parse this JSON data, do
//
//     final dealerMonitoringSaleAchievement = dealerMonitoringSaleAchievementFromJson(jsonString);

import 'dart:convert';

DealerMonitoringSaleAchievement dealerMonitoringSaleAchievementFromJson(String str) => DealerMonitoringSaleAchievement.fromJson(json.decode(str));

String dealerMonitoringSaleAchievementToJson(DealerMonitoringSaleAchievement data) => json.encode(data.toJson());

class DealerMonitoringSaleAchievement {
    DealerMonitoringSaleAchievement({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory DealerMonitoringSaleAchievement.fromJson(Map<String, dynamic> json) => DealerMonitoringSaleAchievement(
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
        this.marketShare,
        this.stdAhievment,
        this.stuAhievment,
        this.partsSalesAchievement,
        this.oneToOne,
        this.paymentStatus,
        this.activitiesReport,
    });

    MarketShare marketShare;
    MarketShare stdAhievment;
    MarketShare stuAhievment;
    MarketShare partsSalesAchievement;
    OneToOne oneToOne;
    PaymentStatus paymentStatus;
    ActivitiesReport activitiesReport;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        marketShare: MarketShare.fromJson(json["MarketShare"]),
        stdAhievment: MarketShare.fromJson(json["STDAhievment"]),
        stuAhievment: MarketShare.fromJson(json["STUAhievment"]),
        partsSalesAchievement: MarketShare.fromJson(json["PartsSalesAchievement"]),
        oneToOne: OneToOne.fromJson(json["OneToOne"]),
        paymentStatus: PaymentStatus.fromJson(json["PaymentStatus"]),
        activitiesReport: ActivitiesReport.fromJson(json["ActivitiesReport"]),
    );

    Map<String, dynamic> toJson() => {
        "MarketShare": marketShare.toJson(),
        "STDAhievment": stdAhievment.toJson(),
        "STUAhievment": stuAhievment.toJson(),
        "PartsSalesAchievement": partsSalesAchievement.toJson(),
        "OneToOne": oneToOne.toJson(),
        "PaymentStatus": paymentStatus.toJson(),
        "ActivitiesReport": activitiesReport.toJson(),
    };
}

class ActivitiesReport {
    ActivitiesReport();

    factory ActivitiesReport.fromJson(Map<String, dynamic> json) => ActivitiesReport(
    );

    Map<String, dynamic> toJson() => {
    };
}

class MarketShare {
    MarketShare({
        this.target,
        this.actual,
        this.percentage,
    });

    double target;
    double actual;
    double percentage;

    factory MarketShare.fromJson(Map<String, dynamic> json) => MarketShare(
        target: json["target"].toDouble(),
        actual: json["actual"].toDouble(),
        percentage: json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "target": target,
        "actual": actual,
        "percentage": percentage,
    };
}

class OneToOne {
    OneToOne({
        this.target,
        this.actual,
        this.lm,
    });

    int target;
    int actual;
    int lm;

    factory OneToOne.fromJson(Map<String, dynamic> json) => OneToOne(
        target: json["target"],
        actual: json["actual"],
        lm: json["LM"],
    );

    Map<String, dynamic> toJson() => {
        "target": target,
        "actual": actual,
        "LM": lm,
    };
}

class PaymentStatus {
    PaymentStatus({
        this.status,
    });

    String status;

    factory PaymentStatus.fromJson(Map<String, dynamic> json) => PaymentStatus(
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
    };
}
