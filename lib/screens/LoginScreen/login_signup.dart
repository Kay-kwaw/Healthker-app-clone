

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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: Image.asset(
                          'assets/images/page_bg_transparent@2x.png',
                        ).image,
                      ),
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
                                    width: 200,
                                    height: 130,
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
                                    // labelColor:
                                    //     FlutterFlowTheme.of(context).tertiary,
                                    // unselectedLabelColor:
                                    //     FlutterFlowTheme.of(context).grayLight,
                                    // labelPadding:
                                    //     const EdgeInsetsDirectional.fromSTEB(
                                    //         24, 0, 24, 0),
                                    // labelStyle:
                                    //     FlutterFlowTheme.of(context).titleSmall,
                                    // unselectedLabelStyle: const TextStyle(),
                                    // indicatorColor:
                                    //     FlutterFlowTheme.of(context).tertiary,
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
                                                child: TextFormField(
                                                  obscureText: false,
                                                  decoration: const InputDecoration(
                                                    labelText: 'Email Address',
                                                    hintText:
                                                        'Enter your email...',
                                                    filled: true,
                                                    fillColor:
                                                        Colors.transparent,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                  ),
                                                  style: const TextStyle(),
                                                  
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  obscureText: true,
                                                  decoration: const InputDecoration(
                                                    labelText: 'Password',
                                                    hintText:
                                                        'Enter your password...',
                                                    filled: true,
                                                    fillColor:
                                                        Colors.transparent,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
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
                                                    .fromSTEB(0, 24, 0, 0),
                                                child: AppTexts.buildElevatedButton(buttontext: 'Login', onPressed: (){})
                                              ),
                                              // Padding(
                                              //   padding: const EdgeInsetsDirectional
                                              //       .fromSTEB(0, 20, 0, 24),
                                              //   child: FFButtonWidget(
                                              //     onPressed: () async {
                                              //       context.pushNamed(
                                              //           'forgotPassword');
                                              //     },
                                              //     text: 'Forgot Password',
                                              //     options: FFButtonOptions(
                                              //       width: 185,
                                              //       height: 40,
                                              //       padding:
                                              //           const EdgeInsetsDirectional
                                              //               .fromSTEB(
                                              //                   0, 0, 0, 0),
                                              //       iconPadding:
                                              //           const EdgeInsetsDirectional
                                              //               .fromSTEB(
                                              //                   0, 0, 0, 0),
                                              //       color: FlutterFlowTheme.of(
                                              //               context)
                                              //           .secondaryBackground,
                                              //       textStyle:
                                              //           FlutterFlowTheme.of(
                                              //                   context)
                                              //               .titleSmall
                                              //               .override(
                                              //                 fontFamily:
                                              //                     'Plus Jakarta Sans',
                                              //                 color: FlutterFlowTheme
                                              //                         .of(context)
                                              //                     .primaryText,
                                              //               ),
                                              //       elevation: 0,
                                              //       borderSide: const BorderSide(
                                              //         color: Colors.transparent,
                                              //         width: 1,
                                              //       ),
                                              //       borderRadius:
                                              //           BorderRadius.circular(
                                              //               8),
                                              //     ),
                                              //   ),
                                              // ),
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
                                                child: TextFormField(
                                                  obscureText: false,
                                                  decoration: const InputDecoration(
                                                    labelText: 'Email Address',
                                                    hintText:
                                                        'Enter your email...',
                                                    filled: true,
                                                    fillColor:
                                                       Colors.transparent,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                  ),
                                                  style: const TextStyle(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  obscureText: true,
                                                  decoration: const InputDecoration(
                                                    labelText: 'Password',
                                                    hintText:
                                                        'Enter your password...',
                                                    filled: true,
                                                    fillColor:
                                                        Colors.transparent,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    // suffixIcon: InkWell(
                                                    //   onTap: () => setState(
                                                    //     () => _model
                                                    //             .passwordCreateVisibility =
                                                    //         !_model
                                                    //             .passwordCreateVisibility,
                                                    //   ),
                                                    //   focusNode: FocusNode(
                                                    //       skipTraversal: true),
                                                    //   child: Icon(
                                                    //     _model.passwordCreateVisibility
                                                    //         ? Icons
                                                    //             .visibility_outlined
                                                    //         : Icons
                                                    //             .visibility_off_outlined,
                                                    //     color:
                                                    //         const Color(0x98FFFFFF),
                                                    //     size: 20,
                                                    //   ),
                                                    // ),
                                                  ),
                                                  style: const TextStyle(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  obscureText: true,
                                                  decoration: const InputDecoration(
                                                    labelText:
                                                        'Confirm Password',
                                                    hintText:
                                                        'Enter your password...',
                                                   
                                                    filled: true,
                                                    fillColor:
                                                        Colors.transparent,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    // suffixIcon: InkWell(
                                                    //   onTap: () => setState(
                                                    //   ),
                                                    //   focusNode: FocusNode(
                                                    //       skipTraversal: true),
                                                    //   // child: Icon(
                                                       
                                                    //   //   color:
                                                    //   //       const Color(0x98FFFFFF),
                                                    //   //   size: 20,
                                                    //   // ),
                                                    // ),
                                                  ),
                                                  style: const TextStyle(),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(0, 24, 0, 24),
                                                child: AppTexts.buildElevatedButton(buttontext: 'Register', onPressed: (){})
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
    );
  }
}
