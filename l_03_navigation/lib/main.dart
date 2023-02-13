import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l_03_navigation/purple-page.dart';
import 'package:l_03_navigation/red-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                int _getNumber = await Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => RedPage(),
                    ));
                print("get Number $_getNumber");
              },
              child: Text(
                "IOS Page",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PurplePage()));
              },
              child: Text("Android Page",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20))),
        ],
      ),
    );
  }
}
