import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/gridview_constant.dart';
import 'package:healthker/screens/Order/cart_screen.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppTexts.appBar(
          'Current location',
          Colors.black,
          const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          action: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const  CartScreen())
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          centerTitle: false
        ),
        body:SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 20, 10),
                        child: AppTexts.goodhands()
                      ),
                       const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                          child: Text(
                            'Welcome! Kwaw',
                            style: TextStyle(
                              fontFamily: 'KumbhSans',
                              fontSize: 22,
                              color: Colors.white,
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
                            color: Colors.white,
                          ),
                        ),
                      ),
                        Grid.grid(context),
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



