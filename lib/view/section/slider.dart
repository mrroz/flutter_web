import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                    end:Alignment.centerRight ,
                    colors: [
                      Colors.teal.shade900,
                      Colors.teal.shade900,
                      Colors.teal.shade900,
                      Colors.black87,

                    ]//morteza roozbehi @mr.roz.pv
                ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(itemIndex.toString(),style: TextStyle(color: Colors.white),)),
            ), options: CarouselOptions(
            height: 300,
            initialPage:1 ,
            autoPlayInterval: Duration(seconds: 3),
            autoPlay: true,
          autoPlayAnimationDuration: Duration(seconds: 6),

      ),
      ),
    );
  }//morteza roozbehi @mr.roz.pv
}
