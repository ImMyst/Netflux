import 'package:flutter/material.dart';

class Serie {
  final int id;
  final String name;
  final Table genres;
  final String posterPath;
  final String overview;

  Serie({this.id, this.name, this.genres, this.overview, this.posterPath});

  factory Serie.fromJson(Map<String, dynamic> json) {
    return Serie(
      id: json['id'],
      name: json['name'],
      genres: json['genres'],
      overview: json['overview'],
      posterPath: "https://image.tmdb.org/t/p/w1280" + json['poster_path'],
    );
  }
}
