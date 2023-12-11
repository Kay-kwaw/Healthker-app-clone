import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class Helpscreen extends StatefulWidget {
  const Helpscreen({super.key});

  @override
  State<Helpscreen> createState() => _HelpscreenState();
}

class _HelpscreenState extends State<Helpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTexts.appBar(
         'Help Center',
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
      body:  SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(" Welcome to Support Center"),
              const Text("How can we help you?"),
              const SizedBox(height: 10),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    Text("Search for help")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}