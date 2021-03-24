import 'package:flutter/material.dart';
import 'Info.dart';

void main() => runApp(MyApp());
List<Info> list = [
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List BUlder"),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
            return Card(
              color: Colors.cyanAccent,
              elevation: 5,
              shadowColor: Colors.black,
              margin: EdgeInsets.all(5),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(list[index].name,style: TextStyle(fontFamily: 'ArbFONTS'),),
                    Text("${list[index].height}",style: TextStyle(fontFamily: 'ArbFONTS'),),
                    Text("${list[index].date}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
