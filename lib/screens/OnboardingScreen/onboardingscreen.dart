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
                                  alignment: const AlignmentDirectional(0.0, -0.9),
                                  child: Image.asset("assets/images/healthker_icon.png",
                                  width: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: CarouselSlider(
                                    items: [
        Center(
          child:Image.asset(
                "assets/images/man_pharmacist.png",
                                      ),
        ),
        Center(
          child: Image.asset("assets/images/man_with_phone.png",
          ),
          
        ),
        Center(
          child: Image.asset("assets/images/delivery_man.png",
          ),
          
        ),
        
      ], 
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, -0.10),
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
}