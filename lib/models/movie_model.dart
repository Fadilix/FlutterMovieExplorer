class Movie {
  String title;
  String year;
  String type;
  String poster;
  String plot;

  Movie({
    required this.title,
    required this.year,
    required this.type,
    required this.poster,
    required this.plot,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["Title"] ?? "",
      year: json["Year"] ?? "",
      type: json["Type"] ?? "",
      poster: json["Poster"] ?? "",
      plot: json["Plot"] ?? "",
    );
  }
}
