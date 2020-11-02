import 'package:Netflux/models/serie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../repository/movie_repository.dart';

class SerieDetailBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Serie serieParam = ModalRoute.of(context).settings.arguments;

    return FutureBuilder(
        future: Repository.fetchOneSerie(serieParam.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Serie serie = snapshot.data;
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                //The background
                Positioned.fill(
                  child: FittedBox(
                      child: Image.network(serie.posterPath),
                      fit: BoxFit.cover),
                ),
                //The scroll view
                SingleChildScrollView(
                    child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.topCenter,
                          stops: [
                        0.1,
                        0.4,
                        0.7,
                        1.0
                      ],
                          colors: [
                        Colors.black,
                        Colors.black87,
                        Colors.black54,
                        Colors.transparent
                      ])),
                  margin: const EdgeInsets.only(top: 400.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          serie.name,
                          style: TextStyle(
                            color: Color(0xfffefeff),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Wrap(
                          spacing: 10,
                          children: [
                            Text(
                              serie.status,
                              style: TextStyle(
                                color: Color(0xfffefeff),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                color: Color(0xfffefeff),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              serie.releaseDate.substring(0, 4),
                              style: TextStyle(
                                color: Color(0xfffefeff),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "-",
                              style: TextStyle(
                                color: Color(0xfffefeff),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffe6ba8a),
                              size: 18,
                            ),
                            Text(
                              serie.note,
                              style: TextStyle(
                                color: Color(0xffe6ba8a),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: "Cast:  ",
                            style: TextStyle(
                              color: Color(0xfffefeff),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Summary",
                          style: TextStyle(
                            color: Color(0xfffefeff),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          serie.overview,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 6,
                          style: TextStyle(
                            color: Color(0xfffefeff),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          return Text("");
        });
  }
}
