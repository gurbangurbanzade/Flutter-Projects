import 'package:flutter/material.dart';
import 'package:l_04_daily_horoscope/constellationDetail.dart';

import 'src/model/constellation.dart';

class ConstellationItem extends StatelessWidget {
  final Constellation selectedConstellation;
  const ConstellationItem({required this.selectedConstellation, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, "/constellationDetail",
              arguments: selectedConstellation);
        },
        leading: Image.asset(
            "images/" + selectedConstellation.constellationLitlleImg),
        title: Text(
          selectedConstellation.constellationName,
          style: myTextStyle.headline5,
        ),
        subtitle: Text(selectedConstellation.constellationDate),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
      ),
    );
  }
}
