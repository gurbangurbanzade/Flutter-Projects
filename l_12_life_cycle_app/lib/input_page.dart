import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:l_12_life_cycle_app/result_page.dart';
import 'package:l_12_life_cycle_app/user_data.dart';

import 'my_container.dart';
import 'gender_container.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});
  final String title;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? selectedGender;
  double smokeCount = 1.0;
  double sportCount = 1.0;

  int boy = 170;
  int kq = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Həyat Dövrü",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      reng: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("BOY",
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "${boy}",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: Colors.lightBlue,
                                        width: 1), //<-- SEE HERE
                                  ),
                                  onPressed: () {
                                    print("plus");
                                    setState(() {
                                      boy++;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 20,
                                    color: Colors.black,
                                  )),
                              ButtonTheme(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: Colors.lightBlue,
                                        width: 1), //<-- SEE HERE
                                  ),
                                  onPressed: () {
                                    print("minus");
                                    setState(() {
                                      boy--;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  //bura
                  Expanded(
                    child: MyContainer(
                      reng: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                              quarterTurns: 3,
                              child: Text("KQ",
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "${kq}",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: Colors.lightBlue,
                                        width: 1), //<-- SEE HERE
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      kq++;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 20,
                                    color: Colors.black,
                                  )),
                              ButtonTheme(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                        color: Colors.lightBlue,
                                        width: 1), //<-- SEE HERE
                                  ),
                                  onPressed: () {
                                    print("minus");
                                    setState(() {
                                      kq--;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //
                ],
              ),
            ),

            //
            Expanded(
              child: MyContainer(
                reng: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Həftədə neçə dəfə idman edirsiniz?",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text("${sportCount.round()}",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Slider(
                      min: 0,
                      max: 7,
                      value: sportCount,
                      onChanged: (newsportCount) {
                        setState(() {
                          sportCount = newsportCount;
                        });
                      },
                      divisions: 7,
                    )
                  ],
                ),
              ),
            ),
            //
            Expanded(
              child: MyContainer(
                reng: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Gündə neçə ədəd siqaret çəkirsiniz?",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text("${smokeCount.round()}",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Slider(
                      min: 0,
                      max: 100,
                      value: smokeCount,
                      onChanged: (newSmokeCount) {
                        setState(() {
                          smokeCount = newSmokeCount;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = "woman";
                        });
                      },
                      child: MyContainer(
                          reng: selectedGender == "woman"
                              ? Colors.lightBlue[200]
                              : Colors.white,
                          child: GenderContainer(
                            fontIcon: FontAwesomeIcons.venus,
                            gender: "QADIN",
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = "man";
                        });
                      },
                      child: MyContainer(
                          reng: selectedGender == "man"
                              ? Colors.lightBlue[200]
                              : Colors.white,
                          child: GenderContainer(
                            gender: "KİŞİ",
                            fontIcon: FontAwesomeIcons.mars,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.grey[300],
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              UserData(
                                  boy: boy,
                                  kq: kq,
                                  selectedGender: selectedGender,
                                  smokeCount: smokeCount,
                                  sportCount: sportCount),
                            )),
                  );
                },
                child: Text("Hesalbla"))
          ],
        ),
      ),
    );
  }
}
