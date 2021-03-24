import 'package:flutter/material.dart';
import 'dart:developer' as log;
void main() => runApp(Screen2());
class Screen2 extends StatelessWidget {
  static const ActivityName="/Screen2Activity";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Design(),
    );
  }
}
class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String,Object> args=ModalRoute.of(context).settings.arguments;
    log.log("$args");
    return Scaffold(
      appBar:  AppBar(
        title:  Text("screen2"),
      ),
    );
  }
}

