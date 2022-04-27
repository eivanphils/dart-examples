// To parse this JSON data, do
//
//     final capitalInfo = capitalInfoFromJson(jsonString);

import 'dart:convert';

CapitalInfo capitalInfoFromJson(String str) => CapitalInfo.fromJson(json.decode(str));

String capitalInfoToJson(CapitalInfo data) => json.encode(data.toJson());

class CapitalInfo {
    CapitalInfo({
        required this.latlng,
    });

    List<double> latlng;

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
    };
}
