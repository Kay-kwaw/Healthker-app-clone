
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCarouselSlider(),
    );
  }
}

class MyCarouselSlider extends StatefulWidget {
  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider with Text'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              _buildCarouselItem('Page 1', 'assets/image1.jpg'),
              _buildCarouselItem('Page 2', 'assets/image2.jpg'),
              _buildCarouselItem('Page 3', 'assets/image3.jpg'),
            ],
            options: CarouselOptions(
              height: 400.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: true,
              aspectRatio: 16/9,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 16.0),
          // Dots Indicator
          DotsIndicator(
            dotsCount: 3,
            // position: _currentIndex.toDouble(),
            decorator: DotsDecorator(
              color: Colors.grey,
              activeColor: Colors.blue,
              size: Size(10.0, 10.0),
              spacing: EdgeInsets.all(4.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselItem(String text, String imagePath) {
    return Container(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.black.withOpacity(0.5),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
