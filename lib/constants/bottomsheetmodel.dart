import 'dart:math';

import 'package:flutter/material.dart';

class BottomSheetUtils {
  static void showMedicinePurchaseOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0,),
                child: Text(
                  "How do you want to purchase the medicine?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.upload),
                title: const Text("Upload Prescription"),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Upload Prescription"
                },
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text("Search Medicine"),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Search Medicine"
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Write Request"),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Write Request"
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(180, 0, 0, 8),
                child: ListTile(
                  leading: const Icon(Icons.cancel, size: 30,),
                  title: const Text(""),
                  onTap: () {
                    Navigator.pop(context);
                    // Handle the action for closing the bottom sheet
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



class TopSheetUtils {
  static void showMedicinePurchaseOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 500,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0,),
                child: Text(
                  "How do you want to purchase the medicine?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20,),
              _buildListTile(
                icon: Icons.add_location_outlined,
                title: "Use my current location",
                onTap: () {
                  // Navigator.pop(context);
                  // Handle the action for "Upload Prescription"
                },
              ),
            ],
          ),
        );
      },
    );
  }

  static Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 5),
          Center(child: Text(title), ),
        ],
      ),
      onTap: onTap,
    );
  }
}

