// To parse this JSON data, do
//
//     final logisticSituation = logisticSituationFromJson(jsonString);

import 'dart:convert';

LogisticSituation logisticSituationFromJson(String str) => LogisticSituation.fromJson(json.decode(str));

String logisticSituationToJson(LogisticSituation data) => json.encode(data.toJson());

class LogisticSituation {
    LogisticSituation({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory LogisticSituation.fromJson(Map<String, dynamic> json) => LogisticSituation(
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
        this.doNo,
        this.doDate,
        this.invNo,
        this.invDate,
        this.dataList,
    });

    String doNo;
    DateTime doDate;
    String invNo;
    DateTime invDate;
    List<DataListDataList> dataList;

    factory DataDataList.fromJson(Map<String, dynamic> json) => DataDataList(
        doNo: json["doNo"],
        doDate: DateTime.parse(json["doDate"]),
        invNo: json["invNo"],
        invDate: DateTime.parse(json["invDate"]),
        dataList: List<DataListDataList>.from(json["dataList"].map((x) => DataListDataList.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "doNo": doNo,
        "doDate": doDate.toIso8601String(),
        "invNo": invNo,
        "invDate": invDate.toIso8601String(),
        "dataList": List<dynamic>.from(dataList.map((x) => x.toJson())),
    };
}

class DataListDataList {
    DataListDataList({
        this.model,
        this.feature,
        this.color,
        this.doQty,
        this.invQty,
        this.rinQty,
        this.dateIssue,
        this.dateExpected,
        this.dateArrival,
    });

    Model model;
    Feature feature;
    Color color;
    int doQty;
    int invQty;
    int rinQty;
    DateTime dateIssue;
    DateTime dateExpected;
    DateTime dateArrival;

    factory DataListDataList.fromJson(Map<String, dynamic> json) => DataListDataList(
        model: modelValues.map[json["model"]],
        feature: featureValues.map[json["feature"]],
        color: colorValues.map[json["color"]],
        doQty: json["doQty"],
        invQty: json["invQty"],
        rinQty: json["rinQty"],
        dateIssue: DateTime.parse(json["dateIssue"]),
        dateExpected: DateTime.parse(json["dateExpected"]),
        dateArrival: DateTime.parse(json["dateArrival"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "feature": featureValues.reverse[feature],
        "color": colorValues.reverse[color],
        "doQty": doQty,
        "invQty": invQty,
        "rinQty": rinQty,
        "dateIssue": dateIssue.toIso8601String(),
        "dateExpected": dateExpected.toIso8601String(),
        "dateArrival": dateArrival.toIso8601String(),
    };
}

enum Color { EMPTY, COLOR, PURPLE }

final colorValues = EnumValues({
    "น้ำเงิน": Color.COLOR,
    "เทา": Color.EMPTY,
    "ดำ": Color.PURPLE
});

enum Feature { B1_V500_A, B9_BA00_A }

final featureValues = EnumValues({
    "B1V500 สตาร์ทมือ/ดิสก์เบรค (A)/ล้อแม็กซ์": Feature.B1_V500_A,
    "B9BA00 สตาร์ทมือ/ดิสก์เบรค (A)/ล้อแม็กซ์": Feature.B9_BA00_A
});

enum Model { XSR115, YZF_R15 }

final modelValues = EnumValues({
    "XSR115": Model.XSR115,
    "YZF-R15": Model.YZF_R15
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
