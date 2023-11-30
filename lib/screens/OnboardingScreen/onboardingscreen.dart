import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:healthker/screens/LoginScreen/login.dart';
import 'package:healthker/constants/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
  
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child:   Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 234, 234),
        body: SafeArea(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.98),
                                  child: Image.asset("assets/images/healthker_icon.png",
                                  width: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                      child: CarouselSlider(
            items: [
              _buildCarouselItem('Buying medicine just \n           got easier', 'assets/images/man_pharmacist.png'),
              _buildCarouselItem('    Search drug or \nupload prescription', 'assets/images/man_with_phone.png'),
              _buildCarouselItem('      Pickup or \nget it Delivered', 'assets/images/delivery_man.png'),
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
               controller;
                });
              },
            ),
          )          ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.15),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 16),
                                    child: 
                                          SmoothPageIndicator(
                                      count: 3,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await controller.animateToPage(
                                          i,
                                          duration: const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: WormEffect(
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 16,
                                        dotHeight: 8,
                                        dotColor: Colors.grey.shade400,   
                                        activeDotColor: Color.fromARGB(255, 22, 21, 83),
                                        paintStyle: PaintingStyle.fill,
                                      ), 
                                      controller: controller,
                                    ),
                                  ),
                                ),
                                
                                         Align(
                alignment: const AlignmentDirectional(0.00, 1.15),
                child: Container(
                  width: 391,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 251, 251, 251),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Stack(
                    children: [
                       Align(
                        alignment: const AlignmentDirectional(-0.80, -0.81),
                        child: AppTexts.GetStarted(
                          "Get Started", 
                          22, Colors.black
                          )
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.03, -0.45),
                        child: AppTexts.customButton((){
                          Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginWidget()),);
                         
                        })),
                      Align(
                        alignment: const AlignmentDirectional(-0.03, 0.00),
                        child: AppTexts.customButton2(
                          (){}
                        )
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.03, 0.54),
                        child: Text(
                          'Powered by:',
                          style:TextStyle(),
                        ),
                      
                      ),
                      Align(
  alignment: const AlignmentDirectional(-0.25, 0.87),
    child: AppTexts.images(),
  ),
  Align(
  alignment: const AlignmentDirectional(0.25, 0.83),
    child: AppTexts.Pharmacy(),
  ),
                    ],
                  ),
                ),
              ),
                              ],
                            ),
                          ),
                        ),
    );
     
  }

    Widget _buildCarouselItem(String text, String imagePath) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          imagePath,
          // fit: BoxFit.cover,
          width: 400,
          height: 400,
        ),
        Container(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 27.0,
              color: Color.fromARGB(255, 43, 43, 43),
              // fontWeight: FontWeight.bold,
              fontFamily: 'KumbhSans',
            ),
          ),
        ),
      ],
    );
  }
}