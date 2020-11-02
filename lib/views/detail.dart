import 'package:Netflux/builder/detail_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(child: Container(child: DetailBuilder(),),)
        ]
      ),
    );
  }
}
