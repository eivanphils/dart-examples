// To parse this JSON data, do
//
//     final demonyms = demonymsFromJson(jsonString);

import 'dart:convert';

Demonyms demonymsFromJson(String str) => Demonyms.fromJson(json.decode(str));

String demonymsToJson(Demonyms data) => json.encode(data.toJson());

class Demonyms {
    Demonyms({
        required this.eng,
        required this.fra,
    });

    Eng eng;
    Eng fra;

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: Eng.fromJson(json["fra"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra.toJson(),
    };
}

class Eng {
    Eng({
        required this.f,
        required this.m,
    });

    String f;
    String m;

    factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
    );

    Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
    };
}
