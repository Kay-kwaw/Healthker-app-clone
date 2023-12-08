

import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/screens/LoginScreen/login_signup.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: const InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          // onTap: () async {
          //   Navigator.pop();
          // },
          child: Icon(
            Icons.chevron_left_rounded,
            color:backgroundColor,
            size: 32,
          ),
        ),
        title: AppTexts.GetStarted("Forgot Password", 20, Colors.white),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/page_bg_transparent@2x.png',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                ImageConstants.healthkerIcon,
                height: 90,
                width: 90,
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Enter the email associated with your account and \n            we will send you a verification code.',
                      style: TextStyle(
                        fontFamily: "KumbhSans-medium",
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: TextFormField(
                                                    obscureText: true,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Password',
                                                      hintText:
                                                          'Enter your password...',
                                                      filled: true,
                                                      fillColor:
                                                          const Color.fromARGB(255, 14, 21, 27),
                                                         border: OutlineInputBorder(
                                                          borderSide: BorderSide.none,
                                                            borderRadius: BorderRadius.circular(8),),
                                                    ),
                                                    style: const TextStyle(),
                                                   
                                                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: AppTexts.buildElevatedButton(buttontext: "Send", onPressed: (){
               
              })
            ),
          ],
        ),
      ),
    );
  }
}
