import 'package:Netflux/builder/detail/serie_detail_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SerieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            child: SerieDetailBuilder(),
          )
        ],
      ),
    );
  }
}
