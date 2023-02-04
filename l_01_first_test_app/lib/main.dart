import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Header",
          ),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(40),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Gurban"),
            ),
            // padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
            // margin: EdgeInsets.fromLTRB(90, 40, 50, 80),
            // constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {debugPrint("clicked succesfull")},
          child: Icon(
            Icons.plus_one,
            color: Colors.blue,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
