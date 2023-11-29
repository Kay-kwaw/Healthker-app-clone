import 'package:flutter/material.dart';
import 'package:healthker/constants/constants.dart';

class Fields{
  static Widget textFormField(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autofocus: true,
        obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email...',
                        labelStyle: TextStyle(),
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autofocus: true,
        obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Password...',
                        labelStyle: TextStyle(),
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ), 
                         prefix: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                          child: Icon(
                              Icons.key,
                              color:primaryColor,
                              size: 20,
                            ),
                         ),
                         suffix: const Padding(
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