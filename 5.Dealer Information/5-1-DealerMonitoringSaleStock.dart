// To parse this JSON data, do
//
//     final dealerMonitoringSaleStock = dealerMonitoringSaleStockFromJson(jsonString);

import 'dart:convert';

DealerMonitoringSaleStock dealerMonitoringSaleStockFromJson(String str) => DealerMonitoringSaleStock.fromJson(json.decode(str));

String dealerMonitoringSaleStockToJson(DealerMonitoringSaleStock data) => json.encode(data.toJson());

class DealerMonitoringSaleStock {
    DealerMonitoringSaleStock({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory DealerMonitoringSaleStock.fromJson(Map<String, dynamic> json) => DealerMonitoringSaleStock(
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
        this.dlrStrock,
        this.partFastMoving,
    });

    DlrStrock dlrStrock;
    PartFastMoving partFastMoving;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        dlrStrock: DlrStrock.fromJson(json["DLRStrock"]),
        partFastMoving: PartFastMoving.fromJson(json["PartFastMoving"]),
    );

    Map<String, dynamic> toJson() => {
        "DLRStrock": dlrStrock.toJson(),
        "PartFastMoving": partFastMoving.toJson(),
    };
}

class DlrStrock {
    DlrStrock({
        this.mos,
        this.actual,
        this.target,
        this.month,
    });

    int mos;
    int actual;
    int target;
    int month;

    factory DlrStrock.fromJson(Map<String, dynamic> json) => DlrStrock(
        mos: json["mos"],
        actual: json["actual"],
        target: json["target"],
        month: json["month"],
    );

    Map<String, dynamic> toJson() => {
        "mos": mos,
        "actual": actual,
        "target": target,
        "month": month,
    };
}

class PartFastMoving {
    PartFastMoving({
        this.actual,
        this.target,
        this.percentage,
    });

    int actual;
    int target;
    int percentage;

    factory PartFastMoving.fromJson(Map<String, dynamic> json) => PartFastMoving(
        actual: json["actual"],
        target: json["target"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "actual": actual,
        "target": target,
        "percentage": percentage,
    };
}
