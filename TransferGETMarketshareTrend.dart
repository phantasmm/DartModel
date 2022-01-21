// To parse this JSON data, do
//
//     final transferGetMarketshareTrend = transferGetMarketshareTrendFromJson(jsonString);

import 'dart:convert';

TransferGetMarketshareTrend transferGetMarketshareTrendFromJson(String str) => TransferGetMarketshareTrend.fromJson(json.decode(str));

String transferGetMarketshareTrendToJson(TransferGetMarketshareTrend data) => json.encode(data.toJson());

class TransferGetMarketshareTrend {
    TransferGetMarketshareTrend({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory TransferGetMarketshareTrend.fromJson(Map<String, dynamic> json) => TransferGetMarketshareTrend(
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
        this.selectedData,
        this.totalData,
        this.percentage,
    });

    String title;
    int selectedData;
    int totalData;
    int percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        title: json["title"],
        selectedData: json["selectedData"],
        totalData: json["totalData"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "selectedData": selectedData,
        "totalData": totalData,
        "percentage": percentage,
    };
}
