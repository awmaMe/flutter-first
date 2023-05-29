class About {
  final int id;
  final String title;
  final String description;

  const About({
    required this.id,
    required this.title,
    required this.description,
  });

  factory About.fromJson(Map<String, dynamic> resData) {
    return About(
      id: resData['id'],
      title: resData['title'],
      description: resData['description'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
      };
}
