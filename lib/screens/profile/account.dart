import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppTexts.appBar(
         'User Details',
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
          ),
       ),
      body: Center(
        child: Text("Hello Account")
      ),
    );
  }
}