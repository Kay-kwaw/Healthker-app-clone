import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/gridview_constant.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
   int _currentIndex = 0;
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppTexts.appBar(
          'Current location',
          Colors.black,
          const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          action: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ),
        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      height: 20,
                    ),
                  ],
                ),
            ],
          ),
          
        ),
        bottomNavigationBar:MyBottomNavigationBar(
          currentIndex: _currentIndex, 
          onTap: (int value) { 
            setState(() {
              _currentIndex = value;
            });
           },),
        ),
      );
  }
}

