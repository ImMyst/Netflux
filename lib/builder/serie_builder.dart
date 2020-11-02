import 'package:Netflux/repository/movie_repository.dart';
import 'package:flutter/material.dart';

import '../models/serie.dart';
import '../views/detail.dart';

class SerieBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Repository.fetchSerie(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: Text("Future en cours"),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Une erreur est survenue"),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Serie serie = snapshot.data[index];
                  return InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PageDetail()),
                          ),
                      child: Container(
                          width: 125.0,
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      Image.network(serie.posterPath).image))));
                });
          }
        });
  }
}
