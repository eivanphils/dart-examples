// To parse this JSON data, do
//
//     final maps = mapsFromJson(jsonString);

import 'dart:convert';

Maps mapsFromJson(String str) => Maps.fromJson(json.decode(str));

String mapsToJson(Maps data) => json.encode(data.toJson());

class Maps {
    Maps({
        required this.googleMaps,
        required this.openStreetMaps,
    });

    String googleMaps;
    String openStreetMaps;

    factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}
