import 'package:flutter/material.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/constants/bottomsheetmodel.dart';
import 'package:healthker/constants/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
   int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppTexts.appBar("Search Pharmacy", backgroundColor, const Icon(Icons.arrow_back, color: textColor,), action:IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color:backgroundColor,
            ),
          ), 
          centerTitle: true, leadingTap: () {  
            Navigator.pop(context);
          },
          ),
      body:   Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 222, 222, 222),
                  filled: true,
                  hintText: "Search Pharmacy",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Filter by:", style: TextStyle(color: Color.fromARGB(255, 121, 121, 121), fontSize: 16),
                    textAlign: TextAlign.center,
                    ),
                  ),
                 Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: backgroundColor,
                    side: const BorderSide(color: backgroundColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: (){
                    SearchSheetUtils.showMedicinePurchaseOptions(context);
                  }, 
                  child: const Row(
                    children: [
                      Text("Pharmacy", style: TextStyle(color: Colors.white),),
                      Icon(Icons.arrow_drop_down, color: Colors.white)
                    ],
                  )),
                 )
                ],
              ),
            ),
            // const Padding(padding: EdgeInsets.all(8.0),
            // child: Text("Pharmacy near you", style: TextStyle(color: Color.fromARGB(255, 121, 121, 121), fontSize: 16),)
            // )
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: _currentIndex, onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
      )
    );
  }
}