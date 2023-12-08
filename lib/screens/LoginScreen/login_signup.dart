

import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
 
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                                      labelColor:
                                          Colors.white,
                                      unselectedLabelColor:
                                          Colors.black,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              50, 0, 30, 0),
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
                                        Tab(
                                          text: 'Login',
                                        ),
                                        Tab(
                                          text: 'Register',
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
                                                  child: TextFormField(
                                                    obscureText: false,
                                                    decoration:  InputDecoration(
                                                      labelText: 'Email Address',
                                                      hintText:
                                                          'Enter your email...',
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
                                                    
                                                      // suffixIcon: InkWell(
                                                      //   onTap: () => setState(
                                                        
                                                      //   ),
                                                      //   focusNode: FocusNode(
                                                      //       skipTraversal: true),
                                                      //   child: const Icon(
                                                      //     color:
                                                      //         Color(0x98FFFFFF),
                                                      //     size: 20,
                                                      //   ),
                                                      // ),
                                                    ),
                                                    style: const TextStyle(),
                                                   
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 24),
                                                      child: InkWell(
                                                        onTap: (){},
                                                        child: AppTexts.GetStarted("Forgotten Password?", 16, Colors.white)
                                                        ),
                                                  
                                                ),
                                                 Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(0, 15, 0, 0),
                                                  child: AppTexts.buildElevatedButton(buttontext: 'Login', onPressed: (){})
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
