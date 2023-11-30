import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {


  @override
  void initState() {
    super.initState();
  }

 

  @override
  Widget build(BuildContext context) {
return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          title: Stack(
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                child: Container(
                  width: 391,
                  height: 133,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.88, 0.00),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/pharmacist_lady.png',
                            width: 177,
                            height: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.93, -0.68),
                        child: Text(
                          'You are in good\nhands with us',
                          style:
                             TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.92, 0.77),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                          child: Text(
                            'We are delighted to\nprovide the best of service',
                            style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.82, 0.00),
                          child: Text(
                            'Welcome Kwaw!\nHere are actions for you',
                            style: TextStyle(),
                          ),
                        ),
                      ],
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
