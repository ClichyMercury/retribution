class CommuneRegion {
  CommuneRegion({
    this.label,
  });

  String? label;

  factory CommuneRegion.fromJson(Map<String, dynamic> json) => CommuneRegion(
        label: json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
      };
}
