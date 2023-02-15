import 'package:flutter/material.dart';
import 'package:l_04_daily_horoscope/routeGenerator.dart';
import 'constellationList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      onGenerateRoute: RouteGEnerator.routeGenerator,
    );
  }
}
