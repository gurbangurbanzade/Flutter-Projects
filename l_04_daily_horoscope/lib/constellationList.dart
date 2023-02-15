import 'package:flutter/material.dart';
import 'package:l_04_daily_horoscope/constellationItem.dart';
import 'src/data/strings.dart';
import 'src/model/constellation.dart';

class ConstellationList extends StatelessWidget {
  late List<Constellation> allConstellation;

  ConstellationList() {
    allConstellation = createData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("B'rcl'r"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ConstellationItem(
              selectedConstellation: allConstellation[index],
            );
          },
          itemCount: allConstellation.length,
        ),
      ),
    );
  }

  List<Constellation> createData() {
    List<Constellation> first = [];
    for (int i = 0; i < 12; i++) {
      var constellationName = Strings.BURC_ADLARI[i];
      var constellationDate = Strings.BURC_TARIHLERI[i];
      var constellationDetail = Strings.BURC_GENEL_OZELLIKLERI[i];
      var constellationLittleImg =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var constellationBigImg =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Constellation addConstellation = Constellation(
          constellationName,
          constellationDate,
          constellationDetail,
          constellationLittleImg,
          constellationBigImg);
      first.add(addConstellation);
    }
    return first;
  }
}
