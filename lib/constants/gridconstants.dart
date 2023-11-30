import 'package:flutter/material.dart';

class Grid {
  static Widget grid(){
    return GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 213, 136, 108),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: AlignmentDirectional(-0.72, -0.67),
                                  child: Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: Text(
                                      'Buy drug/ \nUpload prescription',
                                      style:
                                         TextStyle(
                                          fontFamily: 'KumbhSans',
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 18,
                                         ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(00,30,0,0),
                                      child: Image.asset(
                                        'assets/images/buying.png',
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 102, 100, 100),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Stack(
                              children: [
                                 const Align(
                                  alignment: AlignmentDirectional(-0.72, -0.67),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'Find \nPharmacy',
                                      style:
                                         TextStyle(
                                          fontFamily: 'KumbhSans',
                                          color: Colors.white,
                                          fontSize: 18,
                                         ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.00, .00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(30,30,0,0),
                                      child: Image.asset(
                                        'assets/images/my_black_booking.png',
                                      ),
                                    ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 53, 131, 55),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Padding(
                              padding: EdgeInsets.all(3.0),
                                   child: Stack (children: [
                                    const Align(
                                  alignment: AlignmentDirectional(-0.80, -0.67),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'Report\nSide-Effect',
                                      style:
                                         TextStyle(
                                          fontFamily: 'KumbhSans',
                                          color: Colors.white,
                                          fontSize: 18,
                                         ),
                                    ),
                                  ),
                                ),
                                 Align(
                                  alignment:  AlignmentDirectional(0.00, .00),
                                  child: ClipRRect(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(30,40,0,0),
                                      child: Image.asset(
                                        'assets/images/complain.png',
                                      ),
                                    ),
                                  ),
                                ),
                                   ],
                                   )
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 218, 107, 107),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Padding(
                              padding:EdgeInsets.all(3.0),
                              child: Stack(
                                children: [
                                   const Align(
                                  alignment: AlignmentDirectional(-0.80, -0.67),
                                  child: Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'Report\nSide-Effect',
                                      style:
                                         TextStyle(
                                          fontFamily: 'KumbhSans',
                                          color: Colors.white,
                                          fontSize: 18,
                                         ),
                                    ),
                                  ),
                                ),
                                 Align(
                                  alignment:  AlignmentDirectional(0.00, .00),
                                  child: ClipRRect(
                                    child: Padding(
                                      padding:  EdgeInsetsDirectional.fromSTEB(0,0,0,0),
                                      child: Image.asset(
                                        'assets/images/call_center.png',
                                      ),
                                    ),
                                  ),
                                ),

                                ],
                              )
                            ),
                          )
                        ],
                      );

    
  }
}