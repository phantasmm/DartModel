// To parse this JSON data, do
//
//     final dealerInformation = dealerInformationFromJson(jsonString);

import 'dart:convert';

DealerInformation dealerInformationFromJson(String str) => DealerInformation.fromJson(json.decode(str));

String dealerInformationToJson(DealerInformation data) => json.encode(data.toJson());

class DealerInformation {
    DealerInformation({
        this.data,
        this.message,
        this.statusCode,
    });

    Data data;
    String message;
    int statusCode;

    factory DealerInformation.fromJson(Map<String, dynamic> json) => DealerInformation(
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
        this.dealerBrand,
        this.dealerName,
        this.dealerAddress,
    });

    DealerBrand dealerBrand;
    DealerName dealerName;
    DealerAddress dealerAddress;

    factory DataList.fromJson(Map<String, dynamic> json) => DataList(
        dealerBrand: dealerBrandValues.map[json["dealerBrand"]],
        dealerName: dealerNameValues.map[json["dealerName"]],
        dealerAddress: dealerAddressValues.map[json["dealerAddress"]],
    );

    Map<String, dynamic> toJson() => {
        "dealerBrand": dealerBrandValues.reverse[dealerBrand],
        "dealerName": dealerNameValues.reverse[dealerName],
        "dealerAddress": dealerAddressValues.reverse[dealerAddress],
    };
}

enum DealerAddress { EMPTY }

final dealerAddressValues = EnumValues({
    "เขตสาทร กรุงเทพมหานคร": DealerAddress.EMPTY
});

enum DealerBrand { YAMAHA_EXCLUSIVE, MULTIBRAND }

final dealerBrandValues = EnumValues({
    "Multibrand": DealerBrand.MULTIBRAND,
    "Yamaha Exclusive": DealerBrand.YAMAHA_EXCLUSIVE
});

enum DealerName { EMPTY, DEALER_NAME }

final dealerNameValues = EnumValues({
    "ช.ชัย บิ๊กเซนเตอร์": DealerName.DEALER_NAME,
    "กลางตะวันยางยนต์": DealerName.EMPTY
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
