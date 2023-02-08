import 'dart:ffi';

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
          color: Colors.red,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "D",
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "A",
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "R",
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      "T",
                    ),
                  )
                ],
              ),
              Container(
                  child: Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      width: 100,
                      color: Colors.yellow,
                      alignment: Alignment.center,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.yellow,
                      child: Text(
                        "E",
                      ),
                    ))
                  ],
                ),
              ))
            ],
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

// Row column example
  Container RowColumnExample() {
    return Container(
      color: Colors.red,
      height: 400,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.green,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.yellow,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.blue,
          ),
          Icon(
            Icons.add_circle,
            size: 64,
            color: Colors.teal,
          )
        ],
      ),
    );
  }

//Container Box Decoration, Border, Image ve Shadow
  Center containerExample() {
    return Center(
        child: Container(
      padding: EdgeInsets.all(20),
      child: FlutterLogo(
        style: FlutterLogoStyle.stacked,
        size: 128,
        textColor: Colors.white,
      ),
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.rectangle,
          border: Border.all(width: 10, color: Colors.white),
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: NetworkImage(
                  "https://media.evo.co.uk/image/private/s--M0x7cRgL--/v1608141046/evo/2020/12/BMW%20E39%20M5-3.jpg"),
              fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.green, offset: Offset(0, 20), blurRadius: 10)
          ]),
    ));
  }
}
