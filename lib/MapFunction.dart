import 'package:flutter/material.dart';
import 'Info.dart';
void main() {
  runApp(MapFunction());
}
//ال Map هي داله تاخد داتا وتعرضها وي for loop  بس بترجع widget
List<Info> list = [
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
  Info("ashraf", 170, DateTime.now()),
];

class MapFunction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text("MapFunction"),),
        body:Container(
          child: Column(
            children: [
              ...list.map((item) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(item.name),
                    Text("${item.height}"),
                    Text("${item.date}"),
                  ],
                );
              }).toList()
            ],
          ),
        ),
      )
    );

  }
}
