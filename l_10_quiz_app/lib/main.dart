import 'package:flutter/material.dart';
import 'package:l_10_quiz_app/constants.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  List<String> suallar = [
    "Titanic gelmiş geçmiş en büyük gemidir",
    "Dünyadaki tavuk sayısı insan sayısından fazladır",
    "Kelebeklerin ömrü bir gündür",
    "Dünya düzdür",
    "Kaju fıstığı aslında bir meyvenin sapıdır",
    "Fatih Sultan Mehmet hiç patates yememiştir",
    "Fransızlar 80 demek için, 4 - 20 der",
  ];
  List<bool> cavablar = [false, true, true, false, true, false, true];
  int sualNo = 0;
  String sual = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Center(
          child: Text(
            "Quiz App",
            textAlign: TextAlign.center,
          ),
        )),
        Expanded(
            child: Text(
          suallar[sualNo],
          style: TextStyle(fontSize: 30),
        )),
        Expanded(
            child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: secimler,
        )),
        Expanded(
            child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  bool actualCavab = cavablar[sualNo];
                  setState(() {
                    actualCavab ? secimler.add(like) : secimler.add(disLike);

                    sualNo++;
                  });
                },
                child: Text("like")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    bool actualCavab = cavablar[sualNo];

                    actualCavab ? secimler.add(disLike) : secimler.add(like);

                    sualNo++;
                  });
                },
                child: Text("Dislike"))
          ],
        ))
      ],
    );
  }
}
