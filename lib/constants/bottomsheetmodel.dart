import 'dart:math';

import 'package:flutter/material.dart';
import 'package:healthker/screens/purchaseScreens/purchasescreen.dart';

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
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PurchaseScreen(),
                          ),
                        );
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
class PurchaseSheetUtils {
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
                  "How do you want to Upload it?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt_outlined),
                title: const Text("Camera"),
                onTap: () {
                //  Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => const PurchaseScreen(),
                //           ),
                //         );
                  // Handle the action for "Upload Prescription"
                },
              ),
              ListTile(
                leading: const Icon(Icons.browse_gallery_outlined),
                title: const Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Search Medicine"
                },
              ),
              ListTile(
                leading: const Icon(Icons.file_copy_outlined),
                title: const Text("File Manager"),
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

class SearchSheetUtils {
  static void showMedicinePurchaseOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 330,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0,),
                child: Text(
                  "Filter by:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.local_hospital_rounded),
                title: const Text("Pharmacy name", style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Upload Prescription"
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text("Area", style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Search Medicine"
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Region",style: TextStyle(fontSize: 16)),
                onTap: () {
                  Navigator.pop(context);
                  // Handle the action for "Write Request"
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_city),
                title: const Text("Location", style: TextStyle(fontSize: 16)),
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
