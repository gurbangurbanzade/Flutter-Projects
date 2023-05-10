import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Bu gun ne yeyim"),
        ),
        body: YemekSehifesi(),
      ),
    );
  }
}

class YemekSehifesi extends StatefulWidget {
  @override
  State<YemekSehifesi> createState() => _YemekSehifesiState();
}

class _YemekSehifesiState extends State<YemekSehifesi> {
  // const YemekSehifesi({super.key});
  int supNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> supAdlari = [
    'Mercimek',
    'Toyuq supu',
    'Gobelek supu',
    'Tomat supu',
    'Duyu supu'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void getNumber() {
    setState(() {
      supNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: getNumber,
                child: Image.asset('assets/images/corba_$supNo.jpg')),
          )),
          Text(
            supAdlari[supNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: getNumber,
                child: Image.asset("assets/images/yemek_$yemekNo.jpg")),
          )),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: getNumber,
                child: Image.asset("assets/images/tatli_$tatliNo.jpg")),
          )),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
              width: 200,
              child: Divider(
                height: 5,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
