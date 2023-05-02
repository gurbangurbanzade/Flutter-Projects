import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:l_06_http_json_api/model/users_model.dart';

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

    var jsonObject = jsonDecode(data);

    // List carList = jsonObject;

    // carList.forEach((e) => {print(e.toString())});

    // print(carList[0]["name"]);

    List<Users> allUsers =
        (jsonObject as List).map((user) => Users.fromJson(user)).toList();
    debugPrint(allUsers.length.toString());
  }
}
