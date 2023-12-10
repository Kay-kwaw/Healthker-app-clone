import 'dart:js';

import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';

class Grid {
  static Widget grid() {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          decoration: BoxDecoration(
            color:  const Color.fromARGB(255, 208, 122, 57),
            borderRadius: BorderRadius.circular(15),
          ),
                       child: Padding(
                        padding:  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: Material(
                                        color: Colors.transparent,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          width: MediaQuery.sizeOf(context as BuildContext).width *
                                              0.89,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color:Colors.black,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                        15, 0, 0, 0),
                                                child: Image.asset(
                                                  ImageConstants.complain,
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                               Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10, 15, 10, 0),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                     AppTexts.GetStarted(
                                                        'Report Side-Effect',
                                                        15,
                                                        Colors.white),
                                                      const Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0, 0, 0, 8),
                                                          child: Text(
                                                            'Give us a call in order to schedule your appointment.',
                                                            style:
                                                                TextStyle(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Color(
                                                                          0xB4FFFFFF),
                                                                    ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ), 
                        // Grid.grid(),
                      ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 102, 100, 100),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-0.72, -0.67),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Text(
                    'Find \nPharmacy',
                    style: TextStyle(
                      fontFamily: 'KumbhSans',
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, .00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
                  child: Image.asset(
                    ImageConstants.my_black_booking,
                    width: 147,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 53, 131, 55),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Stack(
                children: [
                  const Align(
                    alignment: AlignmentDirectional(-0.80, -0.67),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Report\nSide-Effect',
                        style: TextStyle(
                          fontFamily: 'KumbhSans',
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, .00),
                    child: ClipRRect(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Image.asset(
                          ImageConstants.complain,
                          width: 170,
                          // 
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 218, 107, 107),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Stack(
                children: [
                  const Align(
                    alignment: AlignmentDirectional(-0.80, -0.67),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'Help\nCenter',
                        style: TextStyle(
                          fontFamily: 'KumbhSans',
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, .00),
                    child: ClipRRect(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(30, 50, 0, 0),
                        child: Image.asset(
                          ImageConstants.call_center,
                          width: 130,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        
      ],
    );
  }
}

