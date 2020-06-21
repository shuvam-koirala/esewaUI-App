import 'dart:html';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkbox=true;
  Color esewaGreenColor= Color.fromRGBO(43, 164, 7,1);
  Color esewaGreyColor=Color.fromRGBO(246, 246, 246,1);
  Color esewaTextColor=Color.fromRGBO(119, 119, 119,1);
  Color smallTextColor =Color.fromRGBO(130, 130, 130,1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column
        ( crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Row
            (
              mainAxisAlignment: MainAxisAlignment.end,
              children: 
              [
                Icon(Icons.close,color:esewaGreenColor,),
                SizedBox
                (
                  width: 20,
                )
              ],
            ),
            Container
            (
              height:60 ,
              width: 230,
              child: Image
              (
                image:AssetImage("images/esewalogo.png",),
                fit: BoxFit.cover,
                ),
            ),
            SizedBox
            (
              height: 40,
            ),
            Container
            (
              child: Column
              ( crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  Text("Welcome,",style:TextStyle
                  (
                    letterSpacing: 2,
                    color: esewaTextColor,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                   ),
                  Text("Sign in to continue",style: TextStyle
                  (
                    color:esewaTextColor,
                    fontSize: 20,
                  ),
                  ),
                ],
              ),
            ),
            SizedBox
            (
              height: 30,
            ),
            SizedBox
              (
                child:Column
                ( crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text("eSewa ID (Mobile/Email)",
                    style:TextStyle
                        (
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color:Colors.black,
                          ),
                    ),
                    TextField
                      ( 
                        
                        cursorWidth: 3.0,
                        keyboardType: TextInputType.text,
                        cursorColor:esewaGreenColor,
                        decoration: InputDecoration
                        (  
                          filled: true,
                        fillColor: esewaGreyColor,
                          focusedBorder: OutlineInputBorder
                          (
                             borderSide: BorderSide(color:Colors.white),
                          ),
                          border:InputBorder.none,
                          hintText: "Username",
                          hintStyle: TextStyle(color:smallTextColor,fontWeight: FontWeight.bold),
                        ),
                      ),
                    SizedBox
                    (
                      height: 20,
                    ),
                    Text("Password/MPIN",
                    style:TextStyle
                        (
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:Colors.black,
                          ),
                    ),
                    TextField
                    ( 
                      
                      obscureText: true,
                      keyboardType: TextInputType.text,
                       cursorColor:esewaGreenColor,
                      decoration: InputDecoration
                      (  filled: true,
                        fillColor: esewaGreyColor,
                        focusedBorder: OutlineInputBorder
                        (
                          borderSide: BorderSide(color:Colors.white),
                        ),
                         border:InputBorder.none,
                         suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "Password",
                        hintStyle: TextStyle(color:smallTextColor,fontWeight: FontWeight.bold),
                      ),
                    )     
                  ]
                ),
              ),
              SizedBox
            (
              height: 20,
            ),
            Container
            (
             child: Row
             (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:
               [
                 Row
                 ( 
                   children:
                   [
                     Checkbox
                     ( value: checkbox,
                      onChanged:(bool value){
                        setState(() {
                          checkbox=value;
                          print(value);
                        });
                      },
                       activeColor: esewaGreenColor,
                       checkColor: Colors.white,
                        ),
                     
                     Text("Remember Me",style: TextStyle
                     (
                       color: Color.fromRGBO(130, 130, 130,1),
                       fontSize: 20,
                     ),
                     ),
                   ]
                 ),
                 FlatButton(
                   onPressed:(){},
                    child:Text("Forgot MPIN?",style: TextStyle
                    (
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: esewaGreenColor,
                    ),
                    )
                    ),
               ]
             ),
            ),
            SizedBox
            (
              height: 30,
            ),
            Center(
              child: RaisedButton
              ( 
                color:esewaGreenColor,
                padding:EdgeInsets.symmetric
                (
                  vertical: 15,
                  horizontal:155 ,
                  ),
                elevation: 5,
                shape:RoundedRectangleBorder
                (
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (){},
                child:Text("Login",style: TextStyle
                (
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ) ,
                ),
            ),
            SizedBox
            (
              height: 30,
            ),
            Row
            ( mainAxisAlignment: MainAxisAlignment.center,
            
              children: 
              [
                Container
                (
                  height: 40,
                  width: 60,
                  child: Image.asset("images/fingerprint1.png",fit:BoxFit.contain,),
                ),
                SizedBox
            (
              width: 0,
            ),
                Column
                (crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    Text("Touch here to use fingerprint sensor to",
                    style:TextStyle
                    (
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ) ,
                    ),
                    Text("login",
                     style:TextStyle
                    (
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ) ,
                    ),
                  ],
                )
              ],
            ),
            SizedBox
            (
              height: 20,
            ),
            Center(
              child: FlatButton
              (
                onPressed: (){},
                 child:Text("Register For Free",
                 style: TextStyle
                      (
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: esewaGreenColor,
                      ),)
                 ),
            ),
            Padding
            (
              child: Center(
                child: Text
                (
                  "@developed by Shuvam Koirala.",
                  style:
                  TextStyle
                  (
                    color: Colors.red
                  ) 
                  ,),
              ),
              padding:EdgeInsets.only(top:10,left:20,right:20)
              )
          ],
        ),
      ),
    );
  }
}