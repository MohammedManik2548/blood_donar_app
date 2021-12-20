class Donar {
  Donar({
    required this.id,
    required this.name,
    required this.bloodGroup,
    required this.number,
    required this.description,
  });

  final int id;
  final String name;
  final String bloodGroup;
  final int number;
  final String description;

  Donar copyWith({
    int? id,
    String? name,
    String? bloodGroup,
    int? number,
    String? description,
  }) =>
      Donar(
        id: id ?? this.id,
        name: name ?? this.name,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        number: number ?? this.number,
        description: description ?? this.description,
      );
}
