import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTexts.appBar("Purchase Instruction", backgroundColor, const Icon(Icons.arrow_back), action:IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color:backgroundColor,
            ),
          ),  centerTitle: true, leadingTap: () {}),
          body:  Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("How it works?", style: TextStyle(fontFamily: "KumbhSans", fontSize: 18),),
              ),
             Padding(padding: const EdgeInsets.all(0),
             child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: backgroundColor,
                ),
               
             ),
             )
            ],
          ),
    );
  }
}