import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/gridconstants.dart';

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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          title: const Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.02, 0.00),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Align(
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
                        fontSize: 12
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
                 Column(
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
                      child: Grid.grid(),
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
                          Expanded(
                            child: Column(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-0.64, 0.18),
                                  child: IconButton(
                                    icon: const Icon(Icons.home),
                                    color: primaryColor,
                                    iconSize: 30,
                                    onPressed: () {
                                      print('Onpressed');
                                      
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.0, 0.18),
                            child: IconButton(
                              icon: const Icon(Icons.bookmark),
                              color: primaryColor,
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
                              color:primaryColor,
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
              
            ],
          ),
      )
      )
    );
  }
}

