import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("images")),
        body: Container(
          child: Column(
            children: [
              Image.network("https://www.imagesource.com/wp-content/uploads/2019/06/Rio.jpg" ,fit: BoxFit.fitHeight),
              Image.asset("Assets/images/photo.png")
            ],
          ),
        ),
      ),
    );
  }
}
