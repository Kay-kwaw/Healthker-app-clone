import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class Fields{
  static Widget EmailTextField(){
    String email = "";
   

    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
             email = value; },
        validator: (value){
                                  if(value!.isEmpty){
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            fillColor: textColor,
                            filled: true,
                            labelText: 'Email...',
                            prefix:  const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 10, 0),
                              child: Icon(
                                  Icons.email,
                                  color: primaryColor,
                                  size: 20,
                                ),
                            ),
                                ),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'KumbhSans',
                                  color: Colors.black
                                ),
                               
                      
                    )
    );
  }
  static Widget passwordField(){
     String password = "";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: (value) {
             password = value; },
        obscureText: true,
        validator: (value){
                                  if(value!.isEmpty){
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        labelText: 'Password...',
                        fillColor: textColor,
                        filled: true,
                         prefix: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                          child: Icon(
                              Icons.key,
                              color:primaryColor,
                              size: 20,
                            ),
                         ),
                         suffix: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                          child: Icon(
                              Icons.visibility,
                              color: primaryColor,
                              size: 20,
                            ),
                         ),
                    ),
                    
                    
                    ),
    );

  }
}