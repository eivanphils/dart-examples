// To parse this JSON data, do
//
//     final translatation = translatationFromJson(jsonString);

import 'dart:convert';

Map<String, Translation> translatationFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v)));

String translatationToJson(Map<String, Translation> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Translation {
    Translation({
        required this.official,
        required this.common,
    });

    String official;
    String common;

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}
