class Profile {
  Profile({
    this.id,
    this.name,
    this.createdAt,
    this.updateAt,
  });

  int? id;
  String? name;
  DateTime? createdAt;
  dynamic? updateAt;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["profile"]["id"],
        name: json["profile"]["name"],
        createdAt: DateTime.parse(json["profile"]["createdAt"]),
        updateAt: json["profile"]["updateAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "createdAt": createdAt!.toIso8601String(),
        "updateAt": updateAt,
      };
}
