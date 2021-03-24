import 'package:flutter/material.dart';
import 'Screen11.dart';
import 'Screen22.dart';

void main() => runApp(TabBarActivity());

class TabBarActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.amber
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text("MainScreen"),
              bottom: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.black,

                tabs: [
                  Tab(
                    icon: Icon(Icons.home,size: 20,color: Colors.deepOrange,semanticLabel: "hello",),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                    text: "Settings",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [FirstScreen(), SecondScreen()],
            ),
          ),
        ));
  }
}
