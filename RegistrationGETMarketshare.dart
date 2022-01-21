// To parse this JSON data, do
//
//     final registrationGetMarketshare = registrationGetMarketshareFromJson(jsonString);

import 'dart:convert';

RegistrationGetMarketshare registrationGetMarketshareFromJson(String str) => RegistrationGetMarketshare.fromJson(json.decode(str));

String registrationGetMarketshareToJson(RegistrationGetMarketshare data) => json.encode(data.toJson());

class RegistrationGetMarketshare {
    RegistrationGetMarketshare({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory RegistrationGetMarketshare.fromJson(Map<String, dynamic> json) => RegistrationGetMarketshare(
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
        this.thisPeriod,
        this.prevPeriod,
        this.lastYear,
    });

    LastYear thisPeriod;
    LastYear prevPeriod;
    LastYear lastYear;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        thisPeriod: LastYear.fromJson(json["thisPeriod"]),
        prevPeriod: LastYear.fromJson(json["prevPeriod"]),
        lastYear: LastYear.fromJson(json["lastYear"]),
    );

    Map<String, dynamic> toJson() => {
        "thisPeriod": thisPeriod.toJson(),
        "prevPeriod": prevPeriod.toJson(),
        "lastYear": lastYear.toJson(),
    };
}

class LastYear {
    LastYear({
        this.selectedData,
        this.totalData,
        this.percentage,
    });

    int selectedData;
    int totalData;
    double percentage;

    factory LastYear.fromJson(Map<String, dynamic> json) => LastYear(
        selectedData: json["selectedData"],
        totalData: json["totalData"],
        percentage: json["percentage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "selectedData": selectedData,
        "totalData": totalData,
        "percentage": percentage,
    };
}
