import 'package:flutter/material.dart';
import "loginscreen.dart";
 void main(){
   return runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp
     (
       debugShowCheckedModeBanner: false,
       title: "Flutter Demo",
       home: Scaffold
       (
         backgroundColor: Colors.white,
         body: SafeArea
         (
           child: LoginScreen(),
           ),
       ),

     );
   }
 }