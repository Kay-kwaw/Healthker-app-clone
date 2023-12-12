import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';
import 'package:healthker/screens/LoginScreen/login_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
       appBar: AppTexts.appBar(
         'User Details',
          textColor,
         centerTitle: false, 
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
      body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: backgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 90,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF39D2C0),
                              // width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const Icon(
                                Icons.person,
                                color: backgroundColor,
                                size: 50
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTexts.GetStarted(
                                'kwaw kumi',
                                18,
                                textColor
                              ),
                              Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: AppTexts.GetStarted(
                                  '0549433446',
                                  14,
                                  textColor
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: AppTexts.GetStarted("Personal Info", 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.link,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child:AppTexts.GetStarted("Link insurance company", 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child:AppTexts.GetStarted("Addresses", 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color:textColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.add_home,
                          color:  Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: AppTexts.GetStarted("Preferred facilities", 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 10),
                child: AppTexts.GetStarted("Account settings", 15, textColor)
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.notification_add,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child:AppTexts.GetStarted('Notification settings', 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.location_searching,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child:AppTexts.GetStarted('Locations settings', 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.privacy_tip_rounded,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: AppTexts.GetStarted("Share App", 15, textColor)
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.90, 0.00),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF57636C),
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.ios_share,
                          color: Color(0xFF57636C),
                          size: 24,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: AppTexts.GetStarted("Rate app", 15, textColor)
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF57636C),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(50, 8, 8, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                         Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(90, 0, 0, 0),
                            child: InkWell(
                              child: AppTexts.GetStarted("Log Out", 18, textColor)),
                        ),
                         InkWell(
                          onTap: () async{
                            
                          await logout();
                          // Navigate to the login page
                          // ignore: use_build_context_synchronously
                         Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageWidget(),
                    ),
                    (Route<dynamic> route) => false, // This prevents going back to the AccountScreen
                  );
                          },
                          child: const Icon(Icons.logout_outlined, color: Colors.red,))
                        
                      ],
                    ),
                  ),
                ),
              ])
          ),
        );
  }
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
  }
}



