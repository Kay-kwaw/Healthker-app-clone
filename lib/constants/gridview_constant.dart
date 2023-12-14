

import 'package:flutter/material.dart';
import 'package:healthker/constants/bottomsheetmodel.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';
import 'package:healthker/screens/HelpCenter/help_screen.dart';
import 'package:healthker/screens/search/search.dart';

class BottomSheetModel extends ChangeNotifier {
  bool _isBottomSheetVisible = false;

  bool get isBottomSheetVisible => _isBottomSheetVisible;

  void showBottomSheet() {
    _isBottomSheetVisible = true;
    notifyListeners();
  }

  void hideBottomSheet() {
    _isBottomSheetVisible = false;
    notifyListeners();
  }
}
class Grid {
  static Widget grid(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: SingleChildScrollView(
                          child: Material(
                                          color: Colors.transparent,
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: InkWell(
                                            onTap: (){
                                               BottomSheetUtils.showMedicinePurchaseOptions(context);
                                            },
                                            child: Container(
                                              // width: MediaQuery.sizeOf(context).width *
                                              //     0.89,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:const Color.fromARGB(255, 60, 92, 108),
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
                                                      ImageConstants.buying,
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
                                                         InkWell(
                                                            onTap: (){
                                                            
                                                            },
                                                           child: AppTexts.GetStarted(
                                                              'Buy drug / Upload Prescription',
                                                              15,
                                                              Colors.white),
                                                         ),
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
                                        ),
                        ), 
                      
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: Material(
                                        color: Colors.transparent,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                                          },
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:const Color.fromARGB(255, 99, 91, 91),
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
                                                    ImageConstants.my_black_booking,
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
                                                       InkWell(
                                                        onTap: (){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                                                        },
                                                         child: AppTexts.GetStarted(
                                                            'Find Pharmacy',
                                                            15,
                                                            Colors.white),
                                                       ),
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
                                      ), 
                        // Grid.grid(),
                      ),
                    Padding(
                        padding:  const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: Material(
                                        color: Colors.transparent,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          // width: MediaQuery.sizeOf(context as BuildContext).width *
                                          //     0.89,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color:const Color.fromARGB(255, 157, 159, 215),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsetsDirectional.fromSTEB(
                                                        15, 0, 0, 0),
                                                child: InkWell(
                                                  onTap: (){
                                                    
                                                  },
                                                  child: Image.asset(
                                                    ImageConstants.complain,
                                                    width: 60,
                                                    height: 60,
                                                    fit: BoxFit.cover,
                                                  ),
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
                                                     InkWell(
                                                      onTap: (){
                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                             SnackBar(
                                                              content:
                                                             Container(
                                                              padding: const EdgeInsets.all(16),
                                                              height: 80,
                                                              decoration: const BoxDecoration(
                                                                color:Color.fromARGB(255, 233, 166, 166),
                                                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                                              ),
                                                              child: 
                                                              const Row(
                                                                children: [
                                                                  SizedBox(width: 48),
                                                                  Expanded(
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text("Oh Snap!", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                                                                            Icon(Icons.error, color: Colors.red,)
                                                                          ],
                                                                        ),
                                                                        Text("Coming soon", style: TextStyle(color: Colors.black),
                                                                        maxLines: 2,
                                                                        overflow: TextOverflow.ellipsis,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              ),
                                                              behavior: SnackBarBehavior.floating,
                                                              backgroundColor: Colors.transparent,
                                                              elevation: 0,
                                                              )
                                                           );
                                                      },
                                                       child: AppTexts.GetStarted(
                                                          'Report Side-Effect',
                                                          15,
                                                          Colors.white),
                                                     ),
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
                        // Grid.grid(),
                      ),
        ),
         Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                        child: Material(
                                        color: Colors.transparent,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpWidget()));
                                          },
                                          child: Container(
                                            // width: MediaQuery.sizeOf(context).width *
                                            //     0.89,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color:const Color.fromARGB(255, 193, 167, 167),
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
                                                    ImageConstants.call_center,
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
                                                       InkWell(
                                                      onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpWidget()));
                                                      },
                                                         child: AppTexts.GetStarted(
                                                            'Help Center',
                                                            15,
                                                            Colors.white),
                                                       ),
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
                                      ), 
         ),
      ],
    );
  }
}
