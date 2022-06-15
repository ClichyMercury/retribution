import 'package:retribution/models/request_body%20models/typeMinistere_model.dart';

class Ministere {
  Ministere({
    this.label,
    this.contacts,
    this.email,
    this.localisation,
    this.typeMinistere,
    this.file,
    this.lien,
    this.contact1,
    this.contact2,
    this.description,
    this.abreviation,
    this.longitude,
    this.latitude,
    this.isPublish,
  });

  String? label;
  String? contacts;
  String? email;
  String? localisation;
  TypeMinistere? typeMinistere;
  String? file;
  String? lien;
  String? contact1;
  String? contact2;
  String? description;
  String? abreviation;
  String? longitude;
  String? latitude;
  bool? isPublish;

  factory Ministere.fromJson(Map<String, dynamic> json) => Ministere(
        label: json["label"],
        contacts: json["contacts"],
        email: json["email"],
        localisation: json["localisation"],
        typeMinistere: TypeMinistere.fromJson(json["typeMinistere"]),
        file: json["file"],
        lien: json["lien"],
        contact1: json["contact1"],
        contact2: json["contact2"],
        description: json["description"],
        abreviation: json["abreviation"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        isPublish: json["isPublish"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "contacts": contacts,
        "email": email,
        "localisation": localisation,
        "typeMinistere": typeMinistere!.toJson(),
        "file": file,
        "lien": lien,
        "contact1": contact1,
        "contact2": contact2,
        "description": description,
        "abreviation": abreviation,
        "longitude": longitude,
        "latitude": latitude,
        "isPublish": isPublish,
      };
}
