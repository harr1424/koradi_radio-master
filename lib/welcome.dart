import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:koradi_app/english_home.dart';
import 'package:koradi_app/esp_home.dart';
import 'package:koradi_app/french_home.dart';
import 'package:url_launcher/url_launcher.dart';

class Welcome extends StatelessWidget {
  var audioHandler;

  MediaItem englishStream = const MediaItem(
      id: "https://sc.dattalive.com/8214/stream", title: "Lecture Player"
  );

  MediaItem espStream = const MediaItem(
      id: "https://sc.dattalive.com/8210/stream", title: "Reproductor de Radio"
  );

  MediaItem frnStream = const MediaItem(
    id: "https://sonic.dattalive.com/8228/stream", title: "Flux Radio Koradi"
  );

  MediaItem prtStream = const MediaItem(
    id: "https://sonic.dattalive.com/8358/stream", title: "Transmissão de Rádio Koradi"
  );

  MediaItem itStream = const MediaItem(
      id: "https://sonic.dattalive.com/8374/stream", title: "Stream Radiofonico Koradi"
  );

  MediaItem deStream = const MediaItem(
      id: "https://sonic.dattalive.com/8376/stream", title: "Koradi-Radiostream"
  );

  MediaItem MeditationStreamEn = const MediaItem(
      id: "https://sonic.dattalive.com/8380/stream", title: "Meditation Player"
  );

  MediaItem MeditationStreamEsp = const MediaItem(
      id: "https://sonic.dattalive.com/8376/stream", title: "Reproductor de Meditaciones"
  );


  Welcome({Key? key, this.audioHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Language"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/koradi.png',
                    height: 200,
                    width: 200,
                  ),
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
                      audioHandler.playMediaItem(frnStream);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FrenchHome(
                                audioHandler: audioHandler,
                              )));
                    },
                    child: Text("Français"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch("http://koradi.org/po/radio-koradi/");
                    },
                    child: Text("Português"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch("http://koradi.org/it/radio-koradi/");
                    },
                    child: Text("Italiano"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      launch("http://koradi.org/de/koradi-radio/");
                    },
                    child: Text("Deutsch"),
                  ),
                ]),
          ]),
    );
  }
}
