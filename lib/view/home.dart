import 'package:flutter/material.dart';
import 'package:flutter_web/view/section/header.dart';
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


        ],),
      ),
    );
  }
}
