import 'package:flutter/material.dart';
import '../widgets/xylophone_key.dart';
import 'youtube_page.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xylophone Media Player"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.play_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const YoutubePage(),
                ),
              );
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          XylophoneKey(color: Colors.red, note: 1),
          XylophoneKey(color: Colors.orange, note: 2),
          XylophoneKey(color: Colors.yellow, note: 3),
          XylophoneKey(color: Colors.green, note: 4),
          XylophoneKey(color: Colors.teal, note: 5),
          XylophoneKey(color: Colors.blue, note: 6),
          XylophoneKey(color: Colors.purple, note: 7),
        ],
      ),
    );
  }
}