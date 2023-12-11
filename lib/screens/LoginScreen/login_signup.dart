

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/constants/textfieldscontants.dart';
import 'package:healthker/screens/Forgotpassword/forgot_password_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
 
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    Future<void> _saveAuthenticationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAuthenticated', true);
  }

  Future<bool> _getAuthenticationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAuthenticated') ?? false;
  }

  //Snipper of a login function that communicates with the API
  final String baseUrl = 'https://mobile-api-test.gnepplatform.com';
  //Representation of data as key pair values which consist of the API key and the value;
  //baseApi is a map of key value pairs
  Future<({String message, bool status})> login(
      {context, required String email, required String password}) async {

    final Map<String, String> loginRequest = {
      "api_key": "d37e4e08a0fc40b39abf5ce36a8d70c75fe05b83",
      "guid": "F83420D0-9A83-11E9-99B4-002590DD14B1",
      "user": "mobile",
      "passcode": "35c5f3f25f9fa1b503a1c016ae5f1c670d22f22d",
      "method": "SIGNIN_REQUEST",
      "email_address": email,
      "password": password,
    };
    

   
    try {
      final response = await http.post(Uri.parse(baseUrl),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          body: jsonEncode(loginRequest));
      if (response.statusCode == 200) {
        //Json response is used to decode the response from the API and converts Json format to dart object and stored in the JsonResponse.
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['resp_code'] == '000') {
        await _saveAuthenticationStatus(); // Save authentication status
        return(
          status: jsonResponse['resp_code'] == '000',
          message: jsonResponse['resp_msg'] as String,
        );
      }// debugPrint('Decoded message: $jsonResponse');
        return(
          status: jsonResponse['resp_code'] == '000',
          message: jsonResponse['resp_msg'] as String,
        );
      } else {
        if (kDebugMode) {
          print('Error: ${response.statusCode}');
        }
        if (kDebugMode) {
          print('Response: ${response.body}');
        }

        return (status: false, message: 'Could not log in');
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }

      return (status: false, message: e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height * 1,
                      constraints: const BoxConstraints(
                        maxWidth: 600,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Image.asset(
                                      ImageConstants.healthkerIcon,
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.fitHeight,
                                    ),
                                ],
                              ),
                              
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                   const Align(
                                    alignment: Alignment(0, 0),
                                    child: TabBar(
                                      isScrollable: true,
                                      dividerColor: Colors.transparent,
                                      labelColor:
                                          Colors.white,
                                      unselectedLabelColor:
                                          Colors.black,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              50, 0, 10, 0),
                                      labelStyle:
                                          TextStyle(
                                            fontFamily: "KumbhSans",
                                            fontSize: 17
                                          ),
                                      unselectedLabelStyle: TextStyle(),
                                      indicatorColor:
                                          Colors.black,
                                      indicatorWeight: 3,
                                      tabs: [
                                        Row(
                                          children: [
                                            Tab(
                                              text: 'Login',
                                              
                                            ),
                                            Tab(
                                              icon: Icon(Icons.person),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Tab(
                                              text: 'Register',
                                            ),
                                            Icon(Icons.person),
                                          ],
                                        ),
                                      ],
                                      // controller: _model.tabBarController,
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              24, 0, 24, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: AppTexts.GetStarted(
                                                      'Welcome',
                                                      20,
                                                      Colors.white,
                                                    ),
                                                ),
                                                  const Text(
                                                    'Sign in your account',
                                                    style: TextStyle(
                                                      fontFamily: 'KumbhSans-medium',
                                                      color: Color.fromARGB(255, 193, 193, 193),
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child:Fields.emailTextField(
                                                    emailController
                                                  )
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: Fields.passwordField(
                                                    passwordController
                                                  )
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 24),
                                                      child: InkWell(
                                                        onTap: (){
                                                                                      Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => const ForgotPasswordWidget(),
                                                      ),
                                                    );
                                                        },
                                                        child: AppTexts.GetStarted("Forgotten Password?", 16, Colors.white)
                                                        ),
                                                  
                                                ),
                                                 Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 15, 0, 0),
                                                  child: AppTexts.buildElevatedButton(buttontext: 'Login',
                                                       onPressed: () async {
                    // Show loading dialog
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => const Center(
                        child: CircularProgressIndicator(
                          color: primaryColor,
                        ),
                      ),
                    );

                    try {
                      final loginResponse = await login(
                        email: emailController.text,
                        password: passwordController.text,
                      );


                      debugPrint('This is my login Response: $loginResponse');

                      // Close the loading dialog
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);
                      final isAuthenticated = await _getAuthenticationStatus();

                      if (loginResponse.status && isAuthenticated) {
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Index(),
                          ),
                        );
                      } else {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(loginResponse.message),
                          ),
                        );
                      }
                    } catch (e) {
                      // Close the loading dialog in case of an error
                      // ignore: use_build_context_synchronously
                      Navigator.pop(context);

                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('An error occurred: $e'),
                        ),
                      );
                    }
                  },)
                                                ),
                                                 
                                                                                              const Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
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
                                          ),
                                        ),
                                               
                                        Padding(
                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                              24, 0, 24, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: AppTexts.GetStarted(
                                                      'Let\'s get your registered',
                                                      20,
                                                      Colors.white,
                                                    ),
                                                ),
                                                  const Text(
                                                    'Create an account to get started',
                                                    style: TextStyle(
                                                      fontFamily: 'KumbhSans-medium',
                                                      color: Color.fromARGB(255, 193, 193, 193),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Name',
                                                      hintText:
                                                          'Fullname',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                  
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Phone',
                                                      hintText:
                                                          'Phone',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Date',
                                                      hintText:
                                                          'Date of birth',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Email Address',
                                                      hintText:
                                                          'Email,',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Ghana Card/PassportID',
                                                      hintText:
                                                          'Ghana Card/PassportID',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 0),
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Password',
                                                      hintText:
                                                          'Password',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),
                                                            )
                                                    ),
                                                    style: const TextStyle(),
                                                    
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 15, 0, 5),
                                                      child: InkWell(
                                                        onTap: (){},
                                                        child: const Text("By continuing you agree to our", style: TextStyle(
                                                          fontFamily: "KumbhSans-medium",
                                                          fontSize: 15,
                                                          color: Colors.white
                                                        ),)
                                                        ),
                                                  
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                      child: InkWell(
                                                        onTap: (){},
                                                        child: const Text("Privacy Policy or Terms of Service", style: TextStyle(
                                                          fontFamily: "KumbhSans",
                                                          fontSize: 16,
                                                          color: primaryColor
                                                        ),)
                                                        ),
                                                  
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 24, 0, 24),
                                                  child: AppTexts.buildElevatedButton(buttontext: 'Register', onPressed: (){})
                                                ),
                                                //  Padding(
                                                //   padding: const EdgeInsetsDirectional
                                                //       .fromSTEB(0, 0, 0, 0),
                                                //       child: InkWell(
                                                //         onTap: (){},
                                                //         child: const Text("Already Have an Account?", style: TextStyle(
                                                //           fontFamily: "KumbhSans",
                                                //           fontSize: 16,
                                                //           color: Colors.white
                                                //         ),)
                                                //         ),
                                                  
                                                // ),
                                                  const Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                                  ),
                                ],
                                
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
              
            ),
            
          ),
        ),
      ),
    );
  }
}
