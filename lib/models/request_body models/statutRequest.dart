class StatusRequete {
  StatusRequete({
    this.label,
    this.niveau,
  });

  String? label;
  int? niveau;

  factory StatusRequete.fromJson(Map<String, dynamic> json) => StatusRequete(
        label: json["label"],
        niveau: json["niveau"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "niveau": niveau,
      };
}
