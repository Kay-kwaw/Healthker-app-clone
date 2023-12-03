import 'package:flutter/material.dart';
//Primary colors and secondary colors
const primaryColor = Color.fromARGB(255, 7, 28, 183);
const secondaryColor = Color.fromARGB(255, 171, 180, 248);

class AppTexts {
  static Widget LoginButton(Function onPressed) {
    return ElevatedButton(
      style: ButtonStyle(
        
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: 145,
            vertical: 10,
          ),
        ),
      ),
      onPressed: (){
        onPressed();
      },
      child: const Text('Login', style: TextStyle(
        fontFamily: 'Readex Pro',
        color: Colors.white,
        fontSize: 18,
      ),),
    );
  }

  ElevatedButton buildElevatedButton({
    required String buttontext,
    required Function onPressed,
    Color? buttonColor,
    Color? textColor,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor ?? Colors.blue, // Use the provided color or fallback to a default
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
      buttontext,
      style: TextStyle(
        color: textColor ?? Colors.white, // Use the provided text color or fallback to a default
      ),
    ),
  );
}






  static Widget GetStarted(String text, double fontSize, Color color) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'KumbhSans',
        color: color,
        fontSize: fontSize,
      ),
    );
}
  static Widget CreateAccount(Function onPressed) {
    return ElevatedButton(
      style: ButtonStyle(
        
        backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: 90,
            vertical: 10,
          ),
        ),
      ),
      onPressed: (){
        onPressed();
      },
      child: const Text('Create an account', style: TextStyle(
        fontFamily: 'Readex Pro',
        color: Colors.white,
        fontSize: 18,
      ),),
    );
  }
  // ignore: non_constant_identifier_names
  static Widget GnepImage() {
    return Image.asset(
      'assets/images/gnepp_logo.png',
      width: 80,
      height: 60,
      fit: BoxFit.cover,
    );
  }
  // ignore: non_constant_identifier_names
  static Widget PharmcacyImage() {
    return Image.asset(
      'assets/images/pharmacy_council_logo.png',
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    );
  }

   
//Bottom navbar for dashboard
  static Widget bottomnavcontainer(){
    return  Container(
                      width: 396,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                        
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(0, 6),
                            blurRadius: 12,
                          )
                        ],
                        
                      ),
                      child:  Stack(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.64, 0.18),
                                  child: IconButton(
                                    icon: const Icon(Icons.home),
                                    color: primaryColor,
                                    iconSize: 30,
                                    onPressed: () {
                                      print('Onpressed');
                                      
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.0, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.bookmark),
                              color: primaryColor,
                              iconSize: 30,
                              onPressed: () {
                                print('Onpressed');
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.64, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.person),
                              color:primaryColor,
                              iconSize: 30,
                              onPressed: () {
                                print('Onpressed');
                              },
                            ),
                          ),
                        ],
                      ),
                    );
  }

  static Widget goodhands() {
    return Container(
                        width: 396,
                        height: 151,
                        decoration: BoxDecoration(
                          color:primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.85, -1.82),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/pharmacist_lady.png',
                                  width: 197,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                             const Align(
      alignment: AlignmentDirectional(-0.81, -0.68),
      child: Text(
        'You are in good \nhands with us',
        style:TextStyle(
          fontFamily: 'KumbhSans',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
      ),
    ),
    const Align(
      alignment: AlignmentDirectional(-0.80, 0.57),
      child: Text(
        'We are delighted to \nprovide the best of service',
        style: TextStyle(
          fontFamily: 'KumbhSans-meduim',
          color: Colors.white,
          fontSize: 13,
        )
      ),
    ),
                          ],
                        ),
                      );
  }
  
  
}