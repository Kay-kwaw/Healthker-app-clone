import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/constants/textfieldscontants.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  //Snipper of a login fuction that communicates with the API
  final String baseUrl = 'https://mobile-api-test.gnepplatform.com';
  //Representation of data as key pair values which consist of the API key and the value;
  final Map<String, String> baseApi = {
    "api_key": "d37e4e08a0fc40b39abf5ce36a8d70c75fe05b83",
    "guid": "F83420D0-9A83-11E9-99B4-002590DD14B1",
    "user": "mobile",
    "passcode": "35c5f3f25f9fa1b503a1c016ae5f1c670d22f22d",
    "method": "SIGNIN_REQUEST",
    "email_address": "andygadri@gmail.com",
    "password": "1234565"
  };

  Future<void> login() async {
    const String baseUrl = 'https://mobile-api-test.gnepplatform.com';
    
    try {
      final response = await http.post(Uri.parse(baseUrl), body: baseApi);
      if (response.statusCode == 200) {
        //Json response is used to decode the response from the API and converts Json format to dart object and stored in the JsonResponse.
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
      } 
      else {
        print('Error: ${response.statusCode}');
        print('Response: ${response.body}');
      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 234, 234),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
               Align(
                alignment: const AlignmentDirectional(-0.98, -0.94),
                child: IconButton(
                  icon: const Icon(Icons.chevron_left),
                  color:const Color.fromARGB(255, 82, 82, 82),
                  iconSize: 30,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.00, -0.90),
                  child: Image.asset(
                    ImageConstants.healthkerIcon,
                    width: 90,
                    height: 87,
                    fit: BoxFit.cover,
                  ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.00, -0.59),
                child:AppTexts.GetStarted('Welcome', 30, Colors.black)
              ),
              Align(
                alignment: const AlignmentDirectional(-0.00, -0.48),
                child: AppTexts.GetStarted("Sign in to your account", 16, const Color.fromARGB(255, 139, 139, 139))
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -0.29),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: Fields.EmailTextField()
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -0.05),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  child: Fields.passwordField()
                ),
              ),
               Align(
                alignment: const AlignmentDirectional(0.73, 0.10),
                child: AppTexts.GetStarted('Forgotten Password?', 16, primaryColor)
              ),
              Align(
              alignment: const AlignmentDirectional(-0.00, 0.30),
              child: AppTexts.buildElevatedButton(
                          buttontext: "Login",
                          
                         onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Index()));
                         },
                         buttonColor: primaryColor,
                          textColor: Colors.white,
                         )
                         
                         
               ),
              Align(
              alignment: const AlignmentDirectional(-0.00, 0.49),
               child:  AppTexts.buildElevatedButton(
                          buttontext: "Create an Account",
                         onPressed: (){
                           login();
                         },
                         buttonColor: secondaryColor,
                          textColor: primaryColor,

                         )
               ),
               const Align(
                        alignment: AlignmentDirectional(-0.03, 0.84),
                        child: Text(
                          'Powered by:',
                          style:TextStyle(),
                        ),
                      
                      ),
                      Align(
  alignment: const AlignmentDirectional(-0.25, 1.00),
    child: AppTexts.GnepImage(),
  ),
  Align(
  alignment: const AlignmentDirectional(0.25, 0.99),
    child: AppTexts.PharmcacyImage(),
  ),
           
            ],
          ),
        ),
      ),
    );
  }
}
