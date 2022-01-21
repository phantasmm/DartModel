// To parse this JSON data, do
//
//     final transferGetMarketshare = transferGetMarketshareFromJson(jsonString);

import 'dart:convert';

TransferGetMarketshare transferGetMarketshareFromJson(String str) => TransferGetMarketshare.fromJson(json.decode(str));

String transferGetMarketshareToJson(TransferGetMarketshare data) => json.encode(data.toJson());

class TransferGetMarketshare {
    TransferGetMarketshare({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory TransferGetMarketshare.fromJson(Map<String, dynamic> json) => TransferGetMarketshare(
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
