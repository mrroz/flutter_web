
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_grid/responsive_grid.dart';
class HomeArticles extends StatelessWidget {
 List articles = [1,2,3,5,6,7,8,9];
 var lorm = 'لورم ایپسوم متن ورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک اس ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپامل و آینده';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 15,left: 10,right: 10),
      width: double.infinity,
      color: Colors.grey.shade100,

      child: ResponsiveGridRow(
        crossAxisAlignment: CrossAxisAlignment.center,
          children:List.generate(articles.length, (index) {

            return ResponsiveGridCol(
                lg: 3,
                md: 3,
                sm: 6,
                xs: 11,
                child:Container(
                  height: 300,
                  margin: EdgeInsets.all(5),
                  child: GestureDetector(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: HoverContainer(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height: 150,
                              child: Stack(children: [
                                Container(
                                  height:  150,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.circular(15)

                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height:  70,
                                    decoration: BoxDecoration(
                                      gradient:LinearGradient(
                                        begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,

                                          colors: [
                                        Colors.black.withOpacity(.7),
                                        Colors.black.withOpacity(.6),
                                        Colors.black.withOpacity(.5),
                                        Colors.black.withOpacity(.4),
                                        Colors.black.withOpacity(.3),

                                        Colors.black.withOpacity(.1),
                                      ]) ,

                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft:  Radius.circular(15))

                                    ),
                                  ),
                                ),
                              ],),
                            ),
                            Container(
                              margin:EdgeInsets.symmetric(vertical: 4,),
                              child: Center(child: Text('مقاله شماره $index')),
                            ),
                            Container(
                              margin:EdgeInsets.symmetric(vertical: 4,),

                              child: Center(child: Text(lorm.substring(0,150)+'...',style: TextStyle(fontSize: 12),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                )
            );
          } ),

      ),
    );
  }
}


