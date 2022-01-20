// To parse this JSON data, do
//
//     final dealerMonitoringSaleEvaluation = dealerMonitoringSaleEvaluationFromJson(jsonString);

import 'dart:convert';

DealerMonitoringSaleEvaluation dealerMonitoringSaleEvaluationFromJson(String str) => DealerMonitoringSaleEvaluation.fromJson(json.decode(str));

String dealerMonitoringSaleEvaluationToJson(DealerMonitoringSaleEvaluation data) => json.encode(data.toJson());

class DealerMonitoringSaleEvaluation {
    DealerMonitoringSaleEvaluation({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory DealerMonitoringSaleEvaluation.fromJson(Map<String, dynamic> json) => DealerMonitoringSaleEvaluation(
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
        this.serviceRetationRadio,
        this.dealerStaffTraining,
        this.fiveStarScore,
        this.serviceProcare,
        this.showroomEvalution,
        this.yConnect,
    });

    ServiceProcare serviceRetationRadio;
    DealerStaffTraining dealerStaffTraining;
    FiveStarScore fiveStarScore;
    ServiceProcare serviceProcare;
    ServiceProcare showroomEvalution;
    YConnect yConnect;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        serviceRetationRadio: ServiceProcare.fromJson(json["ServiceRetationRadio"]),
        dealerStaffTraining: DealerStaffTraining.fromJson(json["DealerStaffTraining"]),
        fiveStarScore: FiveStarScore.fromJson(json["FiveStarScore"]),
        serviceProcare: ServiceProcare.fromJson(json["ServiceProcare"]),
        showroomEvalution: ServiceProcare.fromJson(json["ShowroomEvalution"]),
        yConnect: YConnect.fromJson(json["YConnect"]),
    );

    Map<String, dynamic> toJson() => {
        "ServiceRetationRadio": serviceRetationRadio.toJson(),
        "DealerStaffTraining": dealerStaffTraining.toJson(),
        "FiveStarScore": fiveStarScore.toJson(),
        "ServiceProcare": serviceProcare.toJson(),
        "ShowroomEvalution": showroomEvalution.toJson(),
        "YConnect": yConnect.toJson(),
    };
}

class DealerStaffTraining {
    DealerStaffTraining({
        this.g,
        this.s,
        this.b,
        this.non,
        this.target,
        this.percentage,
    });

    int g;
    int s;
    int b;
    int non;
    int target;
    int percentage;

    factory DealerStaffTraining.fromJson(Map<String, dynamic> json) => DealerStaffTraining(
        g: json["G"],
        s: json["S"],
        b: json["B"],
        non: json["Non"],
        target: json["target"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "G": g,
        "S": s,
        "B": b,
        "Non": non,
        "target": target,
        "percentage": percentage,
    };
}

class FiveStarScore {
    FiveStarScore({
        this.lastYear,
        this.thisYear,
    });

    ServiceProcare lastYear;
    ServiceProcare thisYear;

    factory FiveStarScore.fromJson(Map<String, dynamic> json) => FiveStarScore(
        lastYear: ServiceProcare.fromJson(json["lastYear"]),
        thisYear: ServiceProcare.fromJson(json["thisYear"]),
    );

    Map<String, dynamic> toJson() => {
        "lastYear": lastYear.toJson(),
        "thisYear": thisYear.toJson(),
    };
}

class ServiceProcare {
    ServiceProcare({
        this.target,
        this.actual,
        this.percentage,
    });

    int target;
    int actual;
    int percentage;

    factory ServiceProcare.fromJson(Map<String, dynamic> json) => ServiceProcare(
        target: json["target"],
        actual: json["actual"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "target": target,
        "actual": actual,
        "percentage": percentage,
    };
}

class YConnect {
    YConnect({
        this.lastmont,
        this.nation,
        this.region,
        this.percentage,
    });

    int lastmont;
    int nation;
    int region;
    int percentage;

    factory YConnect.fromJson(Map<String, dynamic> json) => YConnect(
        lastmont: json["lastmont"],
        nation: json["nation"],
        region: json["region"],
        percentage: json["percentage"],
    );

    Map<String, dynamic> toJson() => {
        "lastmont": lastmont,
        "nation": nation,
        "region": region,
        "percentage": percentage,
    };
}
