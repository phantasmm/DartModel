// To parse this JSON data, do
//
//     final claimHistoryStatus = claimHistoryStatusFromJson(jsonString);

import 'dart:convert';

ClaimHistoryStatus claimHistoryStatusFromJson(String str) => ClaimHistoryStatus.fromJson(json.decode(str));

String claimHistoryStatusToJson(ClaimHistoryStatus data) => json.encode(data.toJson());

class ClaimHistoryStatus {
    ClaimHistoryStatus({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory ClaimHistoryStatus.fromJson(Map<String, dynamic> json) => ClaimHistoryStatus(
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
        this.claimNumber,
        this.date,
        this.model,
        this.modelColor,
        this.productCode,
        this.engineNumber,
        this.status,
    });

    String claimNumber;
    DateTime date;
    String model;
    String modelColor;
    ProductCode productCode;
    EngineNumber engineNumber;
    Status status;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        claimNumber: json["claimNumber"],
        date: DateTime.parse(json["date"]),
        model: json["model"],
        modelColor: json["modelColor"],
        productCode: productCodeValues.map[json["productCode"]],
        engineNumber: engineNumberValues.map[json["engineNumber"]],
        status: statusValues.map[json["status"]],
    );

    Map<String, dynamic> toJson() => {
        "claimNumber": claimNumber,
        "date": date.toIso8601String(),
        "model": model,
        "modelColor": modelColor,
        "productCode": productCodeValues.reverse[productCode],
        "engineNumber": engineNumberValues.reverse[engineNumber],
        "status": statusValues.reverse[status],
    };
}

enum EngineNumber { E3_U5_E_366215 }

final engineNumberValues = EnumValues({
    "E3U5E-366215": EngineNumber.E3_U5_E_366215
});

enum ProductCode { BM9_D0020_B }

final productCodeValues = EnumValues({
    "BM9D0020B": ProductCode.BM9_D0020_B
});

enum Status { READY_TO_SEND, ON_PROCESS, PARTS_ORDERING }

final statusValues = EnumValues({
    "ON PROCESS": Status.ON_PROCESS,
    "PARTS ORDERING": Status.PARTS_ORDERING,
    "READY TO SEND": Status.READY_TO_SEND
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
