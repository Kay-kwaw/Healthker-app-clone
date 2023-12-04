import 'package:flutter/material.dart';
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
            color:  Color.fromARGB(255, 208, 122, 57),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
               const Align(
                alignment: AlignmentDirectional(-0.72, -0.77),             
                  child: Text(
                    'Buy drug \nUpload\nPrescription',
                    style: TextStyle(
                      fontFamily: 'KumbhSans',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
              ),
              Align(
 alignment: const AlignmentDirectional(8.57, 1.18),
  child: ClipRRect(
    child: Padding(
      padding:  const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      child: Image.asset(
        ImageConstants.buying,
        width: 167,
        height: 120,
        // fit: BoxFit.scaleDown,
      ),
    ),
  ),
)
            ],
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
              padding: EdgeInsets.all(3.0),
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
                    alignment: AlignmentDirectional(0.00, .00),
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
              padding: EdgeInsets.all(3.0),
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
                    alignment: AlignmentDirectional(0.00, .00),
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
