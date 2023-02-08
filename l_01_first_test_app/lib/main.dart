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
