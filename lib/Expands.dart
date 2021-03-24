import 'package:flutter/material.dart';
void main()=>runApp(ExpandedApp());
class ExpandedApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyApp();
  }

}
class MyApp extends State<ExpandedApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(  title: Text("Expanded"),),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text("1"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.cyan,
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text("1"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.deepOrange,
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text("1"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
