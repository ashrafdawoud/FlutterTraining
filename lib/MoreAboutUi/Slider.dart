import 'package:firstAPP/Stack.dart';
import 'package:flutter/material.dart';

void main() => runApp(Slidertest());

class Slidertest extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("demo for slider")),
        body: Center(

          child: Row(
            children: [
              Icon(
                Icons.volume_up,
              ),
              Text('value : ${_value.round()}'),
              Expanded(
                  child: Slider(
                min: 0,
                max: 100,
                onChanged: (double value) => setState(() {_value = value;}),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
