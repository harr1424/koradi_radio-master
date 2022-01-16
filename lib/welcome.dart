import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koradi_radio/english_home.dart';
import 'package:koradi_radio/esp_home.dart';

class Welcome extends StatelessWidget {
  var audioHandler;

  MediaItem englishStream = const MediaItem(
      id: "http://pad20.com:8505/vivo",
      title: "Koradi Radio Stream");

  MediaItem espStream = const MediaItem(
      id: "http://pad20.com:8500/vivo",
      title: "Transmisión de Equipo Koradi");

  Welcome({Key? key, this.audioHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Idioma / Language"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ElevatedButton(
                  onPressed: () {
                    audioHandler.playMediaItem(espStream);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EspHome(
                                  audioHandler: audioHandler,
                                )));
                  },
                  child: Text("Español")),
              ElevatedButton(
                onPressed: () {
                  audioHandler.playMediaItem(englishStream);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnglishHome(
                                audioHandler: audioHandler,
                              )));
                },
                child: Text("English"),
              ),
            ]),
          ]),
    );
  }
}
