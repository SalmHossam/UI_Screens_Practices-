import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderExample extends StatefulWidget {
  @override
  State<CarouselSliderExample> createState() => _CarouselSliderExampleState();
}

class _CarouselSliderExampleState extends State<CarouselSliderExample> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(items: [
            Image.asset('assets/images/bg.png'),
            Image.asset('assets/images/bg.png'),
            Image.asset('assets/images/bg.png'),
          ], options: CarouselOptions(
          height: 168,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
          onPageChanged: (index, reason) {
            setState(() {
              index=currentIndex;

            });
          },
        ),
        ),
        DotsIndicator(
            dotsCount:3,
          decorator: DotsDecorator(
            activeColor: Colors.black12,
            shape: CircleBorder(side: BorderSide(width: 5))
          ),
          onTap: (position) {
              setState(() {

              });
          },


        )

      ],
    )

    ;
  }
}