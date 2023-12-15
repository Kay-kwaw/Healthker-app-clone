import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/bottomsheetmodel.dart';
import 'package:healthker/constants/constants.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTexts.appBar("Purchase Instruction", backgroundColor, const Icon(Icons.arrow_back, color: Colors.white,), action:IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color:backgroundColor,
            ),
          ),  centerTitle: false, 
          leadingTap: () {
            Navigator.pop(context);
          }),
          body:  Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("How it works?", style: TextStyle(fontFamily: "KumbhSans", fontSize: 18),),
              ),
             Padding(padding: const EdgeInsets.all(10),
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsetsDirectional.fromSTEB(25,10,40,0),
                   child: Column(
                     children: [
                       Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: backgroundColor,
                          ),
                          child: const Icon(Icons.upload_rounded, color: Colors.white, size: 30,),
                       ),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Step 1", style: TextStyle(fontFamily: "KumbhSans", fontSize: 16),),
                            ),
                            Text("Upload \nPrescription", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 12),
                            textAlign: TextAlign.center,)
                          ],
                        ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsetsDirectional.fromSTEB(20,20,60,0),
                   child: Column(
                     children: [
                       Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: backgroundColor,
                          ),
                          child: const Icon(Icons.upload_rounded, color: Colors.white, size: 30,),
                       ),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Step 2", style: TextStyle(fontFamily: "KumbhSans", fontSize: 16),),
                            ),
                            Text("Pharmacy\n responds to\nrequest", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 12),
                            textAlign: TextAlign.center,)
                          ],
                        ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                   child: Column(
                     children: [
                       Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: backgroundColor,
                          ),
                          child: const Icon(Icons.upload_rounded, color: Colors.white, size: 30,),
                       ),
                        const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Step 3", style: TextStyle(fontFamily: "KumbhSans", fontSize: 16),),
                            ),
                            Text("Ready\nfor pickup\n/delivery", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 12),
                            textAlign: TextAlign.center,)
                          ],
                        ),
                     ],
                   ),
                 ),
               ],
             ),
             
             ),
             const Padding(padding: EdgeInsetsDirectional.fromSTEB(0,30,0,10),
             child: Column(
               children: [
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text("Valid prescription guide", style: TextStyle(fontFamily: "KumbhSans", fontSize: 18),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text("- Don't crop out any part of the prescription", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 16),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text("- Avoid blurred images", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 16),
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text("- Prescription image should include details of\n          doctor and patient, clinic & visit date", style: TextStyle(fontFamily: "KumbhSans-medium", fontSize: 16),
                   ),
                 ),
               ],
             ),
             ),
              Padding(padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
             child: AppTexts.buildElevatedButton(buttontext: "Upload Prescription", onPressed: (){
              PurchaseSheetUtils.showMedicinePurchaseOptions(context);
             })
             ),
             
            ],
            
          ),
          bottomNavigationBar: MyBottomNavigationBar(currentIndex: _currentIndex, onTap: (index){}),
    );
  }
}