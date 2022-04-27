// To parse this JSON data, do
//
//     final car = carFromJson(jsonString);

import 'dart:convert';

Car carFromJson(String str) => Car.fromJson(json.decode(str));

String carToJson(Car data) => json.encode(data.toJson());

class Car {
    Car({
        required this.signs,
        required this.side,
    });

    List<String> signs;
    String side;

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
    );

    Map<String, dynamic> toJson() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": side,
    };
}
