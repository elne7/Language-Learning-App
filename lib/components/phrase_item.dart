import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:language/models/phrase_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.phrase,
    required this.color,
  }) : super(key: key);

  final PhraseModel phrase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(phrase.jpName,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
                Text(phrase.enName,
                    style: const TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                final phrasePlayer = AudioPlayer();
                phrasePlayer.play(AssetSource(phrase.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}
