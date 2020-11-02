import 'dart:convert';

import 'package:Netflux/models/movie.dart';
import 'package:Netflux/models/serie.dart';
import 'package:http/http.dart' as http;

String baseUrl = "https://api.themoviedb.org/3";
String apiKey = "62feaff3d2cf094a340f530fbf25bde9";

class Repository {
  // Trending Movies
  static Future<List<Movie>> fetchMovie() async {
    String url = baseUrl + "/trending/movie/week?api_key=" + apiKey;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var parsedMovies = jsonDecode(response.body)['results'];
      List<Movie> movies = List<Movie>();
      parsedMovies.forEach((movie) {
        movies.add(Movie.fromJson(movie));
      });
      return movies;
    } else {
      throw new Exception('Error');
    }
  }

  // Trending Series
  static Future<List<Serie>> fetchSerie() async {
    String url = baseUrl + "/trending/tv/week?api_key=" + apiKey;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var parsedSeries = jsonDecode(response.body)['results'];
      List<Serie> series = List<Serie>();
      parsedSeries.forEach((serie) {
        series.add(Serie.fromJson(serie));
      });
      return series;
    } else {
      throw new Exception('Error');
    }
  }

  // Best Movies
  static Future<List<Movie>> fetchBestMovie() async {
    String url = baseUrl + "/movie/top_rated?api_key=" + apiKey;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var parsedMovies = jsonDecode(response.body)['results'];
      List<Movie> movies = List<Movie>();
      parsedMovies.forEach((movie) {
        movies.add(Movie.fromJson(movie));
      });
      return movies;
    } else {
      throw new Exception('Error');
    }
  }

  // MovieById
  static Future<Movie> fetchOneMovie(movieId) async {
    String url = baseUrl + "/movie/" + movieId + "?api_key=" + apiKey;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var parsedMovie = jsonDecode(response.body);
      var movie = Movie.fromJson(parsedMovie);
      return movie;
    } else {
      throw new Exception('Error');
    }
  }

  // SerieById
  static Future<Serie> fetchOneSerie(serieId) async {
    String url = baseUrl + "/tv/" + serieId + "?api_key=" + apiKey;
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var parsedSerie = jsonDecode(response.body);
      var serie = Serie.fromJson(parsedSerie);
      return serie;
    } else {
      throw new Exception('Error');
    }
  }
}
