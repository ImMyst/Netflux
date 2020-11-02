import 'package:Netflux/builder/best_movie_builder.dart';
import 'package:Netflux/builder/movie_builder.dart';
import 'package:Netflux/builder/serie_builder.dart';
import 'package:Netflux/models/movie.dart';
import 'package:Netflux/repository/movie_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Movie>> futureMovie;

  @override
  void initState() {
    super.initState();
    futureMovie = Repository.fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35, left: 10),
              child: Text('Popular Movies',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(top: 75, left: 20),
                height: 200,
                child: MovieBuilder()),
            Container(
              margin: EdgeInsets.only(top: 300, left: 10),
              child: Text('Popular TV Shoes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 345, left: 20),
              height: 200,
              child: SerieBuilder(),
            ),
            Container(
              margin: EdgeInsets.only(top: 570, left: 10),
              child: Text('Best Movies Shoes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 625, left: 20),
              height: 200,
              child: BestMovieBuilder(),
            ),
          ],
        )));
  }
}
