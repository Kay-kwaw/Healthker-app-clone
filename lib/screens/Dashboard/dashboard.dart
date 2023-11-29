import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child:AppBar(
            
          )
        ),
      ),
    );
  }
}