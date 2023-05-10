import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const DrumMachine());
}

class DrumMachine extends StatelessWidget {
  const DrumMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  const DrumPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildDrumPad("bongo.wav"),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("bip.wav"));
                      },
                      child: Container(
                        color: Colors.red,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("clap1.wav"));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 7, 27, 44),
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("clap2.wav"));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 244, 54, 181),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("clap3.wav"));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 243, 152, 33),
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("crash.wav"));
                      },
                      child: Container(
                        color: Color.fromARGB(255, 0, 255, 47),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("how.wav"));
                      },
                      child: Container(
                        color: Colors.pink,
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        final player = AudioPlayer();

                        player.play(AssetSource("oobah.wav"));
                      },
                      child: Container(
                        color: Colors.brown,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  TextButton buildDrumPad(String) {
    return TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource("bongo.wav"));
        },
        child: Container(
          color: Colors.blue,
        ));
  }
}
