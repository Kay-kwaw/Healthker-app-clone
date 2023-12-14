import 'package:flutter/material.dart';
//Primary colors and secondary colors
const primaryColor = Color.fromARGB(255, 7, 28, 183);
const secondaryColor = Color.fromARGB(255, 171, 180, 248);
const textColor = Color.fromARGB(255, 255, 255, 255);
const textSecondaryColor = Colors.black;
const backgroundColor =  Color.fromARGB(255, 17, 29, 39);

class AppTexts {
  static AppBar appBar(String title, Color color, Icon icon,  { required IconButton action, required bool centerTitle, required Null Function() leadingTap}) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'KumbhSans',
          color: textColor,
          fontSize: 16,
        ),
      ),
      actions: [
        action,
      ],
      leading: InkWell(
        onTap: (){
           if (leadingTap != null) {
            leadingTap();
          }
        },
        child: icon),
      backgroundColor: backgroundColor,
       elevation: 2,
    );
  }

  static Widget buildElevatedButton({
    required String buttontext,
    required Function onPressed,
    Color? buttonColor,
    Color? textColor,
    
  }) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor ?? primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        
        child: Text(
        buttontext,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 18 // Use the provided text color or fallback to a default
        ),
      ),
      
        ),
    );
}

  // ignore: non_constant_identifier_names
                static Widget GetStarted(String text, double fontSize, Color color,) {
                  return Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'KumbhSans',
                      color: color,
                      fontSize: fontSize,
                    ),
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

                
        static Widget goodhands() {
           return Container(
                            width: 396,
                            height: 110,
                            decoration: BoxDecoration(
                              color:backgroundColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color:Colors.black,
                                  offset: Offset(0, 3),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                )
                              ]
                              
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
                              alignment: AlignmentDirectional(-0.84, -0.68),
                              child: Text(
                                'You are in good \nhands with us',
                                style:TextStyle(
                                  fontFamily: 'KumbhSans',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                            const Align(
                              alignment: AlignmentDirectional(-0.80, 0.57),
                              child: Text(
                                'We are delighted to provide\nthe best of service',
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

                          static void showBottomSheet(BuildContext context) {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return  Container(
                                height: 500,
                                width: double.infinity,
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text("Where do you want it to be delivered to?", style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "KumbhSans"
                                        ),
                                        textAlign: TextAlign.center,
                                        ),
                                        ListTile(
                                          trailing: Icon(Icons.location_on_outlined),
                                          title: Center(child: Text("Use my current location")),
                                        ),
                                      ],
                                    ),
                                  ),
                              );
                            },
                          );
                        }
                      }
                          
                          

                        


