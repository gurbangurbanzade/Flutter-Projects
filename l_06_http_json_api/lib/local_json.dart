import 'dart:convert';

import 'package:flutter/material.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    getCars();
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json"),
      ),
      body: Center(),
    );
  }

  getCars() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/data/cars.json");

    // var jsonObject = jsonDecode(data);
    // List carList = jsonObject;
    List carList = jsonDecode(data);

    print(carList);
  }
}
