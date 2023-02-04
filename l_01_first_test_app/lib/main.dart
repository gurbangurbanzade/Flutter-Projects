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
        body: Container(
          color: Colors.purple,
          width: 200,
          height: 300,
          child: Text(
            "gurban",
          ),
          padding: EdgeInsets.fromLTRB(30, 40, 30, 50),
          margin: EdgeInsets.fromLTRB(90, 40, 50, 80),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
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
