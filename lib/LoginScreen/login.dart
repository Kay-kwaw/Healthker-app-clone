

import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/textfieldscontants.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  

  @override
  void initState() {
    super.initState();
  
    
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
                  color:Color.fromARGB(255, 82, 82, 82),
                  iconSize: 30,
                  onPressed: (){},
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.00, -0.90),
                  child: Image.asset(
                    "assets/images/healthker_icon.png",
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
                  child: Fields.textFormField()
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
                alignment: AlignmentDirectional(0.73, 0.10),
                child: AppTexts.GetStarted('Forgotten Password?', 16, primaryColor)
              ),
              Align(
              alignment: AlignmentDirectional(-0.00, 0.30),
              child:AppTexts.customButton((){})
               ),
              Align(
              alignment: const AlignmentDirectional(-0.00, 0.49),
              child:AppTexts.customButton2((){})
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
    child: AppTexts.images(),
  ),
  Align(
  alignment: AlignmentDirectional(0.25, 0.99),
    child: AppTexts.Pharmacy(),
  ),
           
            ],
          ),
        ),
      ),
    );
  }
}
