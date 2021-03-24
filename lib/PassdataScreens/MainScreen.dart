import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        routes: {
      '/': (context) => Activity(),
      '/x': (context) => Screen1(),
      Screen2.ActivityName: (context) => Screen2(),
    });
  }
}

class Activity extends StatelessWidget {
  void gotoscreens(BuildContext context, int n) {
    Navigator.of(context).pushNamed(
        '/x',
        arguments: {
          'title':"screen1"
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        title: Text(
          "my Main Screen ",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  gotoscreens(context, 1);
                },
                child: Text(
                  "Screen 1",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                gotoscreens(context, 2);
              },
              child: Text(
                "Screen 2",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Header")),
            ListTile(title: Text("element1"),onTap: (){},),
            ListTile(title: Text("element1"),onTap: (){},),
            ListTile(title: Text("element1"),onTap: (){},),
            ListTile(title: Text("element1"),onTap: (){},),
          ],
        ),
      ),
    );
  }
}
