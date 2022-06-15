import 'package:retribution/models/request_body%20models/communeregion_model.dart';

class User {
  User({
    this.phone,
    this.roles,
    this.password,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.ageRange,
    this.postalCode,
    this.requetes,
    this.statistiqueUser,
    this.isActive,
    this.otp,
    this.updateAt,
    this.deleteAt,
    this.isDelete,
  });

  String? phone;
  List<String>? roles;
  String? password;
  String? firstName;
  String? lastName;
  String? email;
  CommuneRegion? gender;
  CommuneRegion? ageRange;
  CommuneRegion? postalCode;
  List<String>? requetes;
  String? statistiqueUser;
  bool? isActive;
  String? otp;
  DateTime? updateAt;
  DateTime? deleteAt;
  bool? isDelete;

  factory User.fromJson(Map<String, dynamic> json) => User(
        phone: json["phone"],
        roles: List<String>.from(json["roles"].map((x) => x)),
        password: json["password"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        gender: CommuneRegion.fromJson(json["gender"]),
        ageRange: CommuneRegion.fromJson(json["ageRange"]),
        postalCode: CommuneRegion.fromJson(json["postalCode"]),
        requetes: List<String>.from(json["requetes"].map((x) => x)),
        statistiqueUser: json["statistiqueUser"],
        isActive: json["isActive"],
        otp: json["otp"],
        updateAt: DateTime.parse(json["updateAt"]),
        deleteAt: DateTime.parse(json["deleteAt"]),
        isDelete: json["isDelete"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "roles": List<dynamic>.from(roles!.map((x) => x)),
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "gender": gender!.toJson(),
        "ageRange": ageRange!.toJson(),
        "postalCode": postalCode!.toJson(),
        "requetes": List<dynamic>.from(requetes!.map((x) => x)),
        "statistiqueUser": statistiqueUser,
        "isActive": isActive,
        "otp": otp,
        "updateAt": updateAt!.toIso8601String(),
        "deleteAt": deleteAt!.toIso8601String(),
        "isDelete": isDelete,
      };
}
