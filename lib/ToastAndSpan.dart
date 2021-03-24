import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()=>runApp(ToastScreen());
 class ToastScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar:  AppBar(title: Text("ToastAndSpan"),),
         body: Center(
           child: FlatButton(
             onPressed: (){
               Fluttertoast.showToast(
                   msg: "This is Center Short Toast",
                   toastLength: Toast.LENGTH_SHORT,
                   gravity: ToastGravity.BOTTOM,
                   timeInSecForIosWeb: 1,
                   backgroundColor: Colors.red,
                   textColor: Colors.white,
                   fontSize: 16.0
               );             },
             child: RichText(
              text:TextSpan(
                 children: [
                   TextSpan(text: "pink",style: TextStyle(color: Colors.pink, fontSize: 15)),
                   TextSpan(text: "/",style: TextStyle(color: Colors.black, fontSize: 15)),
                   TextSpan(text: "Amber",style: TextStyle(color: Colors.amber, fontSize: 15)),
                 ]
               )
             ),
           ),
         ),
       ),
     );
   }
 }
