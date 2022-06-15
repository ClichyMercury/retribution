class Schoo {
  Schoo({
    this.id,
    this.name,
    this.schoolTypeId,
    this.position,
    this.logo,
    this.directorId,
    this.dren,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  int? schoolTypeId;
  String? position;
  dynamic? logo;
  dynamic? directorId;
  String? dren;
  DateTime? createdAt;
  dynamic? updatedAt;

  factory Schoo.fromJson(Map<String, dynamic> json) => Schoo(
        id: json["schoo"]["id"],
        name: json["schoo"]["name"],
        schoolTypeId: json["schoo"]["schoolTypeId"],
        position: json["schoo"]["position"],
        logo: json["schoo"]["logo"],
        directorId: json["schoo"]["directorId"],
        dren: json["schoo"]["dren"],
        createdAt: DateTime.parse(json["schoo"]["createdAt"]),
        updatedAt: json["schoo"]["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "schoolTypeId": schoolTypeId,
        "position": position,
        "logo": logo,
        "directorId": directorId,
        "dren": dren,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt,
      };
}
