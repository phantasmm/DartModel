// To parse this JSON data, do
//
//     final transferGetMarketshareChartByModel = transferGetMarketshareChartByModelFromJson(jsonString);

import 'dart:convert';

TransferGetMarketshareChartByModel transferGetMarketshareChartByModelFromJson(String str) => TransferGetMarketshareChartByModel.fromJson(json.decode(str));

String transferGetMarketshareChartByModelToJson(TransferGetMarketshareChartByModel data) => json.encode(data.toJson());

class TransferGetMarketshareChartByModel {
    TransferGetMarketshareChartByModel({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory TransferGetMarketshareChartByModel.fromJson(Map<String, dynamic> json) => TransferGetMarketshareChartByModel(
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

    List<DataDataList> dataList;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        dataList: List<DataDataList>.from(json["dataList"].map((x) => DataDataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "dataList": List<dynamic>.from(dataList.map((x) => x.toJson())),
    };
}

class DataDataList {
    DataDataList({
        this.title,
        this.dataList,
    });

    String title;
    List<DataListDataList> dataList;

    factory DataDataList.fromJson(Map<String, dynamic> json) => DataDataList(
        title: json["title"],
        dataList: List<DataListDataList>.from(json["dataList"].map((x) => DataListDataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "dataList": List<dynamic>.from(dataList.map((x) => x.toJson())),
    };
}

class DataListDataList {
    DataListDataList({
        this.title,
        this.selectedData,
    });

    String title;
    int selectedData;

    factory DataListDataList.fromJson(Map<String, dynamic> json) => DataListDataList(
        title: json["title"],
        selectedData: json["selectedData"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "selectedData": selectedData,
    };
}
