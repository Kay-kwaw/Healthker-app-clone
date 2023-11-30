import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          title: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-1.02, 0.00),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.94, 0.00),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.70, -2.32),
                child: Text(
                  'Current location',
                  style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFF7F7F7),
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      child: Container(
                        width: 396,
                        height: 151,
                        decoration: BoxDecoration(
                          color:primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.85, -1.82),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/pharmacist_lady.png',
                                  width: 197,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                             const Align(
      alignment: AlignmentDirectional(-0.81, -0.68),
      child: Text(
        'You are in good \nhands with us',
        style:TextStyle(
          fontFamily: 'KumbhSans',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
      ),
    ),
    const Align(
      alignment: AlignmentDirectional(-0.80, 0.57),
      child: Text(
        'We are delighted to \nprovide the best of service',
        style: TextStyle(
          fontFamily: 'KumbhSans-meduim',
          color: Colors.white,
          fontSize: 13,
        )
      ),
    ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        'Welcome! Kwaw',
                        style: TextStyle(
                          fontFamily: 'KumbhSans',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(26, 0, 0, 10),
                      child: Text(
                        'Here are the actions for you',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'KumbhSans',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: GridView(
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
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 160,
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
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/pharmacist_lady.png',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 160,
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
                                  child: ClipRRect(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(25,30,0,0),
                                      child: Image.asset(
                                        'assets/images/my_black_booking.png',
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 396,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(26, 241, 241, 240),
                            offset: Offset(0, 6),
                            blurRadius: 12,
                          )
                        ],
                        
                      ),
                      child:  Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.64, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.home),
                              color: Colors.black,
                              iconSize: 30,
                              onPressed: () {
                                print('Onpressed');
                                
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.0, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.sailing),
                              color: Colors.black,
                              iconSize: 30,
                              onPressed: () {
                                print('Onpressed');
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.64, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.person),
                              color: Colors.black,
                              iconSize: 30,
                              onPressed: () {
                                print('Onpressed');
                              },
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
      )
      )
    );
  }
}

