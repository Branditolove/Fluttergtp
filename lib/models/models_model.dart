class ModelModels {
  final String id;
  final int created;
  final String root;

  ModelModels({
    required this.id,
    required this.created,
    required this.root,
  });

  factory ModelModels.fromJson(Map<String, dynamic> json) => ModelModels(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );

  static List<ModelModels> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => ModelModels.fromJson(data)).toList();
  }
}
