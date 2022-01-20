// To parse this JSON data, do
//
//     final yConnect = yConnectFromJson(jsonString);

import 'dart:convert';

YConnect yConnectFromJson(String str) => YConnect.fromJson(json.decode(str));

String yConnectToJson(YConnect data) => json.encode(data.toJson());

class YConnect {
    YConnect({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory YConnect.fromJson(Map<String, dynamic> json) => YConnect(
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
        this.registDate,
        this.vinNo,
        this.engineNo,
        this.model,
        this.status,
        this.pairingDate,
        this.pairingTime,
        this.target,
        this.actual,
        this.percentage,
    });

    DateTime registDate;
    VinNo vinNo;
    EngineNo engineNo;
    Model model;
    Status status;
    DateTime pairingDate;
    DateTime pairingTime;
    int target;
    int actual;
    int percentage;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        registDate: DateTime.parse(json["registDate"]),
        vinNo: vinNoValues.map[json["vinNo"]],
        engineNo: engineNoValues.map[json["engineNo"]],
        model: modelValues.map[json["model"]],
        status: statusValues.map[json["status"]],
        pairingDate: DateTime.parse(json["pairingDate"]),
        pairingTime: DateTime.parse(json["pairingTime"]),
        target: json["target"],
        actual: json["actual"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "registDate": registDate.toIso8601String(),
        "vinNo": vinNoValues.reverse[vinNo],
        "engineNo": engineNoValues.reverse[engineNo],
        "model": modelValues.reverse[model],
        "status": statusValues.reverse[status],
        "pairingDate": pairingDate.toIso8601String(),
        "pairingTime": pairingTime.toIso8601String(),
        "target": target,
        "actual": actual,
        "percentage": percentage,
    };
}

enum EngineNo { E3_U5_E_366215 }

final engineNoValues = EnumValues({
    "E3U5E-366215": EngineNo.E3_U5_E_366215
});

enum Model { NMAX_CONNECTED_2021, AEROX_2021 }

final modelValues = EnumValues({
    "AEROX [2021]": Model.AEROX_2021,
    "NMAX Connected [2021]": Model.NMAX_CONNECTED_2021
});

enum Status { PAIRED, NOT_PAIRED }

final statusValues = EnumValues({
    "NOT PAIRED": Status.NOT_PAIRED,
    "PAIRED": Status.PAIRED
});

enum VinNo { CL64025938, CL64025937 }

final vinNoValues = EnumValues({
    "CL64025937": VinNo.CL64025937,
    "CL64025938": VinNo.CL64025938
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
