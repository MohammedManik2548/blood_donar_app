import 'dart:convert';

import 'package:blood_donation_app/domain/entities/donar.dart';

class DonarModel extends Donar {
  DonarModel({id, name, bloodGroup, number, description})
      : super(
          id: id,
          name: name,
          bloodGroup: bloodGroup,
          number: number,
          description: description,
        );

  factory DonarModel.fromJson(String str) =>
      DonarModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DonarModel.fromMap(Map<String, dynamic> json) => DonarModel(
        id: json["id"],
        name: json["name"],
        bloodGroup: json["bloodGroup"],
        number: json["number"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "bloodGroup": bloodGroup,
        "number": number,
        "description": description,
      };
}
