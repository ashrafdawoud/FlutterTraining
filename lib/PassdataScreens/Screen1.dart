import 'dart:developer' as log;
import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(Screen1());
class Screen1 extends StatelessWidget {
  static const ActivityName="/Screen1Activity";
  Map<String,Object> args;
  @override
  Widget build(BuildContext context) {
    log.log("$context");
    args=ModalRoute.of(context).settings.arguments; // ازم يبقي في screen1()
    log.log("$args");
    return MaterialApp(
      home: Design(args),
    );
  }
}
class Design extends StatelessWidget {
  final args;

  const Design( this.args);

  @override
  Widget build(BuildContext context) {
    log.log("$context");
    return Scaffold(
      appBar:  AppBar(
        title:  Text("screen1"),
      ),
      body: Container(
          child: Text(args["title"])
      ),
    );
  }
}

