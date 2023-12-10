

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/screens/LoginScreen/login_signup.dart';
import 'package:healthker/screens/OnboardingScreen/onboardingscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  int _currentIndex =0;
  late AnimationController _controller;
  final List<CarouselItem> carouselItems = [
     CarouselItem('Buying medicine just got easier', ImageConstants.man_pharmacist),
     CarouselItem('Search drug or upload prescription', ImageConstants.man_with_phone),
     CarouselItem('Pickup or get it Delivered', ImageConstants.delivery_man),
  ];
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 17, 29, 39),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                    ImageConstants.healthkerIcon,
                    width: 150,
                    height: 80,
                    fit: BoxFit.fitHeight,
                  ),

              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.55,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 20),
                        child: CarouselSlider(
                          items: carouselItems.map((item) => _buildCarouselItem(item)).toList(),
                          options: CarouselOptions(
                              height: 400.0,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                              pauseAutoPlayOnTouch: true,
                              aspectRatio: 16/9,
                              onPageChanged: (index, reason) {
                                setState(() {
                              _currentIndex = index;
                                });
                              },
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.00, 1.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return Container(
                              width: _currentIndex == index ? 25.0 : 18.0,
                              height: 9.0,
                              margin: const EdgeInsets.symmetric(horizontal: 4.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                shape: BoxShape.rectangle,
                                color: _currentIndex == index ? const Color.fromARGB(255, 41, 120, 255) : Color.fromARGB(255, 200, 219, 253),
                              ),
                            );
                          }),
                        ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: AppTexts.buildElevatedButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPageWidget(),
                          ),
                        );
                    },
                    buttontext: 'Get Started',
                  
                  ),
                ),
              ],
            ),
          ),
             const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text('powered by:', style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                      ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Image.asset(
                    ImageConstants.gneppLogo,
                    width: 90,
                    height: 70,
                    fit: BoxFit.fitHeight,
                  )
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Image.asset(
                    ImageConstants.pharmacy_council_logo,
                    width: 90,
                    height: 50,
                    fit: BoxFit.fitHeight,
                  )
                ),
              ],
            ),
          ),
              ],
            ),
          );
  }
}

Widget _buildCarouselItem(CarouselItem item)  {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          item.imagePath,
          width: 400,
          height: 400, 
        ),
        Container(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            item.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 255, 255),
              // fontWeight: FontWeight.bold,
              fontFamily: 'KumbhSans',
            ),
          ),
        ),
      ],
    );
  }

