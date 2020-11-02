class Movie {
  final String id;
  final String title;
  final String genres;
  final String posterPath;
  final String releaseDate;
  final String overview;
  final String note;
  final String status;

  Movie(
      {this.id,
      this.title,
      this.genres,
      this.overview,
      this.releaseDate,
      this.posterPath,
      this.note,
      this.status});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'].toString(),
        title: json['title'],
        genres: json['genres'].toString(),
        overview: json['overview'].toString(),
        releaseDate: json['release_date'],
        posterPath: "https://image.tmdb.org/t/p/w1280" + json['poster_path'],
        note: json['vote_average'].toString(),
        status: json['status']);
  }
}
