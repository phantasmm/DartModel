// To parse this JSON data, do
//
//     final registrationGetMarketshareChartByArea = registrationGetMarketshareChartByAreaFromJson(jsonString);

import 'dart:convert';

RegistrationGetMarketshareChartByArea registrationGetMarketshareChartByAreaFromJson(String str) => RegistrationGetMarketshareChartByArea.fromJson(json.decode(str));

String registrationGetMarketshareChartByAreaToJson(RegistrationGetMarketshareChartByArea data) => json.encode(data.toJson());

class RegistrationGetMarketshareChartByArea {
    RegistrationGetMarketshareChartByArea({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory RegistrationGetMarketshareChartByArea.fromJson(Map<String, dynamic> json) => RegistrationGetMarketshareChartByArea(
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
