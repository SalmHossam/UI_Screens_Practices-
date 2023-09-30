import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/images/bg.png'),
                Image.asset('assets/images/bg.png'),
                Image.asset('assets/images/bg.png')
              ],
              options: CarouselOptions(
                height: 165,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ]),
    );
  }
}