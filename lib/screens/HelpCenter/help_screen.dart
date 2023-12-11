

import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class HelpWidget extends StatefulWidget {
  const HelpWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HelpWidgetState createState() =>
      _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget>
    with TickerProviderStateMixin {


  final scaffoldKey = GlobalKey<ScaffoldState>();

  

  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar:AppTexts.appBar(
          'Help Center',
          textColor,
         centerTitle: true, 
         const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          action: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: backgroundColor,
            ),
          ), leadingTap: () {  
            Navigator.pop(context);
          },),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to support',
                    style: TextStyle(
                          fontFamily: 'Outfit',
                          color: Color(0xFF606A85),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child:AppTexts.GetStarted("Submit A Request", 20, Colors.black)
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Container(
                            width: 120,
                            constraints: const BoxConstraints(
                              maxWidth: 500,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 2,
                              ),
                            ),
                            child: const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_phone,
                                    color: backgroundColor,
                                    size: 36,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Text(
                                      'Call Us',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "KumbhSans-meduim",
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Container(
                            width: 120,
                            constraints: const BoxConstraints(
                              maxWidth: 500,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xFFE5E7EB),
                                width: 2,
                              ),
                            ),
                            child: const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color:backgroundColor,
                                    size: 36,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Text(
                                      'Email Us',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "KumbhSans-meduim",
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Container(
                            width: 120,
                            constraints: const BoxConstraints(
                              maxWidth: 500,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                                width: 2,
                              ),
                            ),
                            child: const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.whatshot_outlined,
                                    color:backgroundColor,
                                    size: 36,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Text(
                                      'WhatsAPP Us',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "KumbhSans-meduim",
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ),
                      ),
                    ]
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            labelText: 'Subject',
                            hintText:
                                'Short Description of what is going on...',
                            
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 16, 12),
                          ),
                          style:
                              const TextStyle(
                                        fontFamily: "KumbhSans-meduim",
                                      ),
                          maxLines: 16,
                          minLines: 6,
                          cursorColor: Color(0xFF6F61EF),
                          
                        ),
                      ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 12),
                    child: AppTexts.buildElevatedButton(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      buttontext: "Submit Request",
                      buttonColor: backgroundColor
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
