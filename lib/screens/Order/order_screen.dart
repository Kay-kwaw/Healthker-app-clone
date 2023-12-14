import 'package:flutter/material.dart';
import 'package:healthker/constants/bottomsheetmodel.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/gridview_constant.dart';
import 'package:healthker/constants/imageconstants.dart';

class Orderscreen extends StatefulWidget {
  const Orderscreen({super.key});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppTexts.appBar(
         'Orders',
          textColor,
         centerTitle: true, 
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
          ), leadingTap: () {  },
       ),
      body: 
       Column(
         children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset(
              ImageConstants.orders,
              width: 200,
              height: 200,
              fit: BoxFit.cover,),
          ),
           Center(
            child: AppTexts.GetStarted("No orders", 18, textSecondaryColor),
            ),
            const SizedBox(
              height: 10,
            
            ),
            const Text("You don't have orders yet"),
            const SizedBox(
              height: 40,
            
            ),
           AppTexts.buildElevatedButton(buttontext: "Buy Medicine", onPressed: (){
            BottomSheetUtils.showMedicinePurchaseOptions(context);
           })
         ],
       )
    );
  }
}