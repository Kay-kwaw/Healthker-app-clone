import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:healthker/constants/imageconstants.dart';
// import 'package:healthker/screens/LoginScreen/login.dart';
import 'package:healthker/constants/constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
  
}

class _OnboardingScreenState extends State<OnboardingScreen> {
   int _currentIndex = 0;
   final List<CarouselItem> carouselItems = [
    CarouselItem('Buying medicine just \n           got easier', ImageConstants.man_pharmacist),
    CarouselItem('    Search drug or \nupload prescription', ImageConstants.man_with_phone),
    CarouselItem('      Pickup or \nget it Delivered', ImageConstants.delivery_man),
  ];
   
   
   
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
                                  child: Image.asset(
                                    ImageConstants.healthkerIcon,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
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
          )          ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.15),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 16),
                                    child:  Row(
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
                       Column(
                         children: [
                           Align(
                            alignment: const AlignmentDirectional(-0.80, -0.81),
                            child: AppTexts.GetStarted(
                              "Get Started", 
                              22, Colors.black
                              )
                                                 ),
                         ],
                       ),
                      Align(
                        alignment: const AlignmentDirectional(-0.03, -0.45),
                        child: AppTexts.buildElevatedButton(
                          buttontext: "Login",
                         onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginWidget()));
                         },
                         buttonColor: primaryColor,
                          textColor: Colors.white,

                         )
                        ),
                      Align(
                        alignment: const AlignmentDirectional(-0.03, -0.05),
                        child:  AppTexts.buildElevatedButton(
                          buttontext: "Create an Account",
                         onPressed: (){},
                         buttonColor: secondaryColor,
                          textColor: primaryColor,

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
    child: AppTexts.GnepImage(),
  ),
  Align(
  alignment: const AlignmentDirectional(0.25, 0.83),
    child: AppTexts.PharmcacyImage(),
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

    Widget _buildCarouselItem(CarouselItem item)  {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          item.imagePath,
          // fit: BoxFit.cover,
          width: 400,
          height: 400,
        ),
        Container(
          padding: const EdgeInsets.all(0.0),
          child: Text(
            item.text,
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

class CarouselItem {
  final String text;
  final String imagePath;

  CarouselItem(this.text, this.imagePath);
}