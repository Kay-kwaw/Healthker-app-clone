import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/constants/imageconstants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppTexts.appBar(
         'Empty Cart',
          textColor,
         centerTitle: true, 
         const Icon(
            Icons.arrow_back_ios_new_sharp,
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
            const Text("You don't any Items in your cart yet"),
            const SizedBox(
              height: 40,
            
            ),
           AppTexts.buildElevatedButton(buttontext: "Buy Medicine", onPressed: (){})
         ],
       ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          setState(() {
            index = 1;
          });
        },
      )
    );
  }
}