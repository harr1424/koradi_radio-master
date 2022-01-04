import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

// HeroApp used to display Koradi image at fullscreen on user tap

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: 'Koradi Bulletin',
      home: Home(),
    );
  }
}
