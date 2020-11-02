import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String title;
  final Table genres;
  final String posterPath;
  final String overview;

  Movie({this.id, this.title, this.genres, this.overview, this.posterPath});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      genres: json['genres'],
      overview: json['overview'],
      posterPath: "https://image.tmdb.org/t/p/w1280" + json['poster_path'],
    );
  }
}
