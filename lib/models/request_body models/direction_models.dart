class Direction {
  Direction({
    this.label,
    this.ministere,
    this.numerosUtils,
  });

  String? label;
  String? ministere;
  String? numerosUtils;

  factory Direction.fromJson(Map<String, dynamic> json) => Direction(
        label: json["label"],
        ministere: json["ministere"],
        numerosUtils: json["numerosUtils"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "ministere": ministere,
        "numerosUtils": numerosUtils,
      };
}
