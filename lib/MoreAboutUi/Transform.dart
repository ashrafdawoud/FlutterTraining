import 'dart:math';

import 'package:flutter/material.dart';

void main()=>runApp(TransFormer());

class TransFormer extends StatefulWidget {
  @override
  _TransFormerState createState() => _TransFormerState();
}

class _TransFormerState extends State<TransFormer> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("app"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Transform.rotate(
              angle: _value * (pi / 180),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ),
            Slider(
              min: 0,
              max: 360,
              divisions: 100,
              value: _value,
              onChanged: (double val) {
                setState(() {
                  _value = val;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
