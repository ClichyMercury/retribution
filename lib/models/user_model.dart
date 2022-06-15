// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:retribution/models/profile_model.dart';
import 'package:retribution/models/schoo_model.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.profession,
    this.schooId,
    this.classeId,
    this.email,
    this.matricule,
    this.username,
    this.phone,
    this.password,
    this.photo,
    this.profileId,
    this.certifiedBy,
    this.status,
    this.urgencyContactId,
    this.createdAt,
    this.updatedAt,
    this.dateValidator,
    this.profile,
    this.schoo,
  });

  int? id;
  String? firstname;
  String? lastname;
  String? profession;
  int? schooId;
  int? classeId;
  String? email;
  String? matricule;
  String? username;
  String? phone;
  String? password;
  dynamic? photo;
  int? profileId;
  dynamic? certifiedBy;
  int? status;
  dynamic? urgencyContactId;
  DateTime? createdAt;
  dynamic? updatedAt;
  dynamic? dateValidator;
  Profile? profile;
  Schoo? schoo;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        profession: json["profession"],
        schooId: json["schooId"],
        classeId: json["classeId"],
        email: json["email"],
        matricule: json["matricule"],
        username: json["username"],
        phone: json["phone"],
        password: json["password"],
        photo: json["photo"],
        profileId: json["profileId"],
        certifiedBy: json["certifiedBy"],
        status: json["status"],
        urgencyContactId: json["urgencyContactId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        dateValidator: json["dateValidator"],
        profile: Profile.fromJson(json["profile"]),
        schoo: Schoo.fromJson(json["schoo"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstname": firstname,
        "lastname": lastname,
        "profession": profession,
        "schooId": schooId,
        "classeId": classeId,
        "email": email,
        "matricule": matricule,
        "username": username,
        "phone": phone,
        "password": password,
        "photo": photo,
        "profileId": profileId,
        "certifiedBy": certifiedBy,
        "status": status,
        "urgencyContactId": urgencyContactId,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt,
        "dateValidator": dateValidator,
        "profile": profile!.toJson(),
        "schoo": schoo!.toJson(),
      };
}
