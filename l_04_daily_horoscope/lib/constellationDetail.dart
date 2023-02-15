import 'package:flutter/material.dart';
import 'package:l_04_daily_horoscope/src/model/constellation.dart';
import 'package:palette_generator/palette_generator.dart';

class constellationDetail extends StatefulWidget {
  final Constellation selectedConstellation;
  const constellationDetail({required this.selectedConstellation, super.key});

  @override
  State<constellationDetail> createState() => _constellationDetailState();
}

class _constellationDetailState extends State<constellationDetail> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _paletteGenerator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appBarFindColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedConstellation.constellationName),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.selectedConstellation.constellationBigImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                widget.selectedConstellation.constellationDetail,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarFindColor() async {
    _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(
        "images/" + widget.selectedConstellation.constellationBigImg));
    appBarColor = _paletteGenerator.dominantColor!.color;
    setState(() {});
  }
}
