import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWIdgit();
  }
}

class HomeWIdgit extends State<MyApp> {
  int counter = 0;
  String tt="1234";
  var _controller=TextEditingController();
  void increments() {
    setState(() {
      counter += 1;
    });
  }

  void decrements() {
    setState(() {
      counter -= 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my First App2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you pressed button"),
              Text("$counter"),
              Container(
                margin: EdgeInsets.all(5),
                height: 35,
                color: Color.fromRGBO(20, 30, 59, 1),
                child: FlatButton(
                  onPressed: increments,
                  child: Text(
                    "increase",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(color: Colors.white, offset: Offset(1, 1))
                      ],
                    ),
                  ),
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 35,
                child: RaisedButton(
                  onPressed: decrements,
                  color: Colors.blueAccent,
                  child: Text("decrease"),
                  textColor: Colors.white,
                  elevation: 15,
                  hoverColor: Colors.black54,
                  splashColor: Colors.black54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                  height: 50,
                  margin: EdgeInsets.all(15),
                  child:TextField(
                    style: TextStyle(
                        fontSize: 14,fontStyle: FontStyle.italic,color: Colors.black
                    ),
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.black54,
                      hintText: "enter your email",
                      hintStyle: TextStyle(fontSize: 14,fontStyle: FontStyle.italic,color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black54,width: 0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black54,width: 0)
                      )
                    ),

                  )
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){setState(() {tt=_controller.text;});},
                  elevation: 20,
                  color: Colors.deepOrange,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text("Take Text",style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)

                  ),

                ),
              ),
              Container(
                child: Text(tt),
              )
            ],
          ),
        ),
      ),
    );
  }
}
