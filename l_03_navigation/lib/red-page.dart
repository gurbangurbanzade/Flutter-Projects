import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _sumNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IOS Page"),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Center(
              child: Text("Red Page"),
            ),
            ElevatedButton(
                onPressed: () {
                  _sumNumber = Random().nextInt(100);
                  print("red page number $_sumNumber");
                  Navigator.of(context).pop(_sumNumber);
                },
                child: Text("Back"))
          ],
        ));
  }
}
