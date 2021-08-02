import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web/view/section/header.dart';
import 'package:flutter_web/view/section/homeArticle.dart';
import 'package:flutter_web/view/section/slider.dart';
import 'package:responsive_grid/responsive_grid.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [

          Header(),
          SliderHome(),
          _showLastArticles(),
        //  _showArticles(),
          HomeArticles(),


        ],),
      ),
    );
  }

  _showLastArticles() {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(17),
            child: Text('آخرين مقالات',style: TextStyle(fontWeight: FontWeight.w800),),
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                   Colors.teal.shade100,
                   Colors.teal,
                   Colors.teal.shade900,
                    Colors.teal,
                    Colors.teal.shade100,
                  ]
              )
            ),
          )
        ],
      ),
    );
  }

  // _showArticles() {
  //
  // }
}
