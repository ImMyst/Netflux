class Serie {
  final String id;
  final String name;
  final String genres;
  final String posterPath;
  final String releaseDate;
  final String overview;
  final String note;
  final String status;

  Serie(
      {this.id,
      this.name,
      this.genres,
      this.overview,
      this.posterPath,
      this.status,
      this.releaseDate,
      this.note});

  factory Serie.fromJson(Map<String, dynamic> json) {
    return Serie(
        id: json['id'].toString(),
        name: json['name'].toString(),
        genres: json['genres'].toString(),
        overview: json['overview'].toString(),
        releaseDate: json['first_air_date'],
        posterPath: "https://image.tmdb.org/t/p/w1280" + json['poster_path'],
        note: json['vote_average'].toString(),
        status: json['status']);
  }
}
