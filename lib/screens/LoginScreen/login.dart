import 'dart:convert';
import 'dart:async';
import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/constants/textfieldscontants.dart';
import 'package:healthker/screens/Dashboard/dashboard.dart';
import 'package:http/http.dart' as http;

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

  //Snipper of a login function that communicates with the API
  final String baseUrl = 'https://mobile-api-test.gnepplatform.com';
  //Representation of data as key pair values which consist of the API key and the value;
  //baseApi is a map of key value pairs
  Future<({String message, bool status})> login(
      {context, required String email, required String password}) async {
      
      showDialog(context: context, builder: (context) => const Center(
        child: CircularProgressIndicator(color: secondaryColor),
      ));


    final Map<String, String> loginRequest = {
      "api_key": "d37e4e08a0fc40b39abf5ce36a8d70c75fe05b83",
      "guid": "F83420D0-9A83-11E9-99B4-002590DD14B1",
      "user": "mobile",
      "passcode": "35c5f3f25f9fa1b503a1c016ae5f1c670d22f22d",
      "method": "SIGNIN_REQUEST",
      "email_address": email,
      "password": password,
    };
    

    debugPrint(loginRequest.toString());
    try {
      final response = await http.post(Uri.parse(baseUrl),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          body: jsonEncode(loginRequest));
          Navigator.pop(context);

      if (response.statusCode == 200) {
        //Json response is used to decode the response from the API and converts Json format to dart object and stored in the JsonResponse.
        final jsonResponse = jsonDecode(response.body);
        debugPrint(jsonResponse);
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
  Widget build(context) {
    return GestureDetector(
      child: Scaffold(
        key: _formKey,
        backgroundColor: const Color.fromARGB(255, 234, 234, 234),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.98, -0.94),
                child: IconButton(
                  icon: const Icon(Icons.chevron_left),
                  color: const Color.fromARGB(255, 82, 82, 82),
                  iconSize: 30,
                  onPressed: () {
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
                  child: AppTexts.GetStarted('Welcome', 30, Colors.black)),
              Align(
                  alignment: const AlignmentDirectional(-0.00, -0.48),
                  child: AppTexts.GetStarted("Sign in to your account", 16,
                      const Color.fromARGB(255, 139, 139, 139))),
              Align(
                alignment: const AlignmentDirectional(0.00, -0.29),
                child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: Fields.emailTextField(
                      emailController
                    )),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -0.05),
                child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: Fields.passwordField(
                      passwordController
                    )),
              ),
              Align(
                  alignment: const AlignmentDirectional(0.73, 0.10),
                  child: AppTexts.GetStarted(
                      'Forgotten Password?', 16, primaryColor)),
              Align(
                  alignment: const AlignmentDirectional(-0.00, 0.30),
                  child: AppTexts.buildElevatedButton(
                    buttontext: "Login",
                    buttonColor: primaryColor,
                    textColor: Colors.white, 
                    onPressed: () async {
                      final loginResponse =
                          await login(email: emailController.text, password: passwordController.text);
                          if(loginResponse == true){
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardWidget(),
                              ),
                            );
                          }else{
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Invalid details'),
                              ),
                            );
                          }

                          
                    }
                  )),
              Align(
                  alignment: const AlignmentDirectional(-0.00, 0.49),
                  child: AppTexts.buildElevatedButton(
                    buttontext: "Create an Account",
                    onPressed: () {},
                    buttonColor: secondaryColor,
                    textColor: primaryColor,
                  )),
              const Align(
                alignment: AlignmentDirectional(-0.03, 0.84),
                child: Text(
                  'Powered by:',
                  style: TextStyle(),
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
