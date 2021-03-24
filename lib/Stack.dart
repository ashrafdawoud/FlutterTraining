import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MatrialAppState();
  }
}
class MatrialAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Stack(//like relativelayout
            alignment: Alignment.center,
            children: [
              Container( height: 400, width: 400 ,color: Colors.black,),
              Container( height: 200, width: 200 ,color: Colors.amber,),
              Container( height: 100, width: 100 ,color: Colors.cyanAccent,),
            ],
          ),
        ),
      ),
    );

  }

}