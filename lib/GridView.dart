import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Grid View"),),
        body: Container(
          child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            maxCrossAxisExtent: 200,
          ),
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black12],
                    begin: Alignment.topLeft,
                    end:  Alignment.bottomRight,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black12],
                    begin: Alignment.topLeft,
                    end:  Alignment.bottomRight,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black12],
                    begin: Alignment.topLeft,
                    end:  Alignment.bottomRight,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black12],
                    begin: Alignment.topLeft,
                    end:  Alignment.bottomRight,
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black45,Colors.black12],
                    begin: Alignment.topLeft,
                    end:  Alignment.bottomRight,
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
