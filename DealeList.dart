// To parse this JSON data, do
//
//     final dealeList = dealeListFromJson(jsonString);

import 'dart:convert';

DealeList dealeListFromJson(String str) => DealeList.fromJson(json.decode(str));

String dealeListToJson(DealeList data) => json.encode(data.toJson());

class DealeList {
    DealeList({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory DealeList.fromJson(Map<String, dynamic> json) => DealeList(
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
        this.prefixName,
        this.name,
        this.telephoneNumber,
        this.latitude,
        this.longitude,
        this.streetView,
        this.poiId,
        this.brand,
        this.category,
        this.authorize,
        this.companyRelate,
        this.isHq,
        this.area,
    });

    String prefixName;
    String name;
    String telephoneNumber;
    double latitude;
    double longitude;
    String streetView;
    int poiId;
    String brand;
    String category;
    bool authorize;
    String companyRelate;
    bool isHq;
    String area;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        prefixName: json["prefixName"],
        name: json["name"],
        telephoneNumber: json["telephoneNumber"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        streetView: json["streetView"],
        poiId: json["poiID"],
        brand: json["brand"],
        category: json["category"],
        authorize: json["authorize"],
        companyRelate: json["companyRelate"],
        isHq: json["isHQ"],
        area: json["area"],
    );

    Map<String, dynamic> toJson() => {
        "prefixName": prefixName,
        "name": name,
        "telephoneNumber": telephoneNumber,
        "latitude": latitude,
        "longitude": longitude,
        "streetView": streetView,
        "poiID": poiId,
        "brand": brand,
        "category": category,
        "authorize": authorize,
        "companyRelate": companyRelate,
        "isHQ": isHq,
        "area": area,
    };
}
