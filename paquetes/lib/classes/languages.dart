// To parse this JSON data, do
//
//     final languages = languagesFromJson(jsonString);

import 'dart:convert';

Languages languagesFromJson(String str) => Languages.fromJson(json.decode(str));

String languagesToJson(Languages data) => json.encode(data.toJson());

class Languages {
    Languages({
        required this.spa,
    });

    String spa;

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
    );

    Map<String, dynamic> toJson() => {
        "spa": spa,
    };
}
