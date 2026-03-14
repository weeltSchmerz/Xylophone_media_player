import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneKey extends StatelessWidget {
  final Color color;
  final int note;

  const XylophoneKey({
    super.key,
    required this.color,
    required this.note,
  });

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$note.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: playSound,
        child: Container(
          color: color,
        ),
      ),
    );
  }
}