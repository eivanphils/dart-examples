// To parse this JSON data, do
//
//     final name = nameFromJson(jsonString);

import 'dart:convert';

Name nameFromJson(String str) => Name.fromJson(json.decode(str));

String nameToJson(Name data) => json.encode(data.toJson());

class Name {
    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    String common;
    String official;
    NativeName nativeName;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromJson(json["nativeName"]),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
    };
}

class NativeName {
    NativeName({
        required this.spa,
    });

    Spa spa;

    factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Spa.fromJson(json["spa"]),
    );

    Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
    };
}

class Spa {
    Spa({
        required this.official,
        required this.common,
    });

    String official;
    String common;

    factory Spa.fromJson(Map<String, dynamic> json) => Spa(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}
