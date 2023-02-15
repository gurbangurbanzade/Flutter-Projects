import 'package:flutter/material.dart';
import 'package:l_04_daily_horoscope/constellationDetail.dart';
import 'package:l_04_daily_horoscope/constellationList.dart';
import 'package:l_04_daily_horoscope/src/model/constellation.dart';

class RouteGEnerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => ConstellationList(),
        );

      case "/constellationDetail":
        final Constellation selected = settings.arguments as Constellation;
        return MaterialPageRoute(
          builder: (context) => constellationDetail(
            selectedConstellation: selected,
          ),
        );
    }
  }
}
