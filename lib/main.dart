import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflux',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(bodyText1: TextStyle(), bodyText2: TextStyle())
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      home: HomePage(),
    );
  }
}
