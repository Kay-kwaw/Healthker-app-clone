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
      appBar: AppTexts.appBar("Purchase Instruction", backgroundColor, const Icon(Icons.arrow_back), action: [], centerTitle: true, leadingTap: () {}),
    );
  }
}