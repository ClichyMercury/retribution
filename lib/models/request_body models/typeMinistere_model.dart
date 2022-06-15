class TypeMinistere {
  TypeMinistere({
    this.label,
    this.ministeres,
  });

  String? label;
  List<String>? ministeres;

  factory TypeMinistere.fromJson(Map<String, dynamic> json) => TypeMinistere(
        label: json["label"],
        ministeres: List<String>.from(json["ministeres"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "ministeres": List<dynamic>.from(ministeres!.map((x) => x)),
      };
}
