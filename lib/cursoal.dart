import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          Image.asset('assets/images/bg.png'),
          Image.asset('assets/images/bg.png'),
          Image.asset('assets/images/bg.png')
        ],
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          aspectRatio: 16/9,
          scrollPhysics: AlwaysScrollableScrollPhysics(),
          height: 165,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.linear,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
           autoPlayInterval:Duration(seconds: 4) ,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}