class Content {
  final int id;
  final String title;
  final String volume;
  final int number;
  final String description;
  final int year;

  const Content({
    required this.id,
    required this.title,
    required this.volume,
    required this.number,
    required this.description,
    required this.year,
  });

  factory Content.fromJson(Map<String, dynamic> resData) => Content(
        id: resData['id'],
        title: resData['title'],
        volume: resData['volume'],
        number: resData['number'],
        description: resData['description'],
        year: resData['description'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'volume': volume,
        'number': number,
        'description': description,
        'year': year,
      };
}
