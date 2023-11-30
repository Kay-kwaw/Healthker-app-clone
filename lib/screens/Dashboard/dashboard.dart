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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 20, 20),
                      child: AppTexts.goodhands()
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        'Welcome! Kwaw',
                        style: TextStyle(
                          fontFamily: 'KumbhSans',
                          fontSize: 22,
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
                   AppTexts.bottomnavcontainer(),
                  ],
                ),
              
            ],
          ),
      )
      )
    );
  }
}

