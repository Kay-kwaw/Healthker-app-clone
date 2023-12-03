import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Define a list of constant items for the carousel
final List<String> carouselItems = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
];

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: carouselItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
