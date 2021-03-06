import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:koradi_app/sobre_esto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'esp_detail_screen.dart';
import 'main.dart';

class EspHome extends StatefulWidget {
  var audioHandler;

  EspHome({Key? key, this.audioHandler}) : super(key: key);

  @override
  _EspHomeState createState() => _EspHomeState();
}

class _EspHomeState extends State<EspHome> {

  MediaItem espStream = const MediaItem(
      id: "https://sc.dattalive.com/8210/stream", title: "Transmisión de Radio Koradi"
  );

  MediaItem MeditationStreamEsp = const MediaItem(
      id: "https://sonic.dattalive.com/8376/stream", title: "Reproductor de Meditaciones"
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Koradi'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Hero(
                tag: 'Noticias de Koradi',
                child: Image.network(
                  'https://koradi.org/es/next.jpg',
                  height: 400,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const EspDetailScreen();
                }));
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    audioHandler.playMediaItem(espStream);
                  },
                  child: const Text("Reproductor de Radio"),
                ),
                ElevatedButton(
                    onPressed: () {
                      audioHandler.playMediaItem(MeditationStreamEsp);
                    },
                    child: const Text("Reproductor de Meditaciones")),
              ],
            ),
    ),
            SingleChildScrollView(
      scrollDirection: Axis.horizontal,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      launch("http://koradi.org/es/contacto-app/");
                    },
                    child: const Text("Contacto")),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to downloads page on website
                    launch("http://koradi.org/es/descargas/");
                  },
                  child: const Text("Área de Descargas"),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SobreEsto()),
                      );
                    },
                    child: const Text("Sobre la app")),
              ],
            ),
            ),
            // Show media item title
            StreamBuilder<MediaItem?>(
              stream: audioHandler.mediaItem,
              builder: (context, snapshot) {
                var mediaItem = snapshot.data;
                return Text(
                  mediaItem?.title ?? '',
                );
              },
            ),
            // Play/pause/stop buttons.
            StreamBuilder<bool>(
              stream: audioHandler.playbackState
                  .map((state) => state.playing)
                  .distinct(),
              builder: (context, snapshot) {
                final playing = snapshot.data ?? false;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (playing)
                      _button(Icons.pause, audioHandler.pause)
                    else
                      _button(Icons.play_arrow, audioHandler.play),
                    _button(Icons.stop, audioHandler.stop),
                  ],
                );
              },
            ),
            // Display the processing state.
            StreamBuilder<AudioProcessingState>(
              stream: audioHandler.playbackState
                  .map((state) => state.processingState)
                  .distinct(),
              builder: (context, snapshot) {
                final processingState =
                    snapshot.data ?? AudioProcessingState.idle;
                return Text("Estado: ${describeEnum(processingState)}");
              },
            ),
          ],
        ),
      ),
    );
  }
}


IconButton _button(IconData iconData, VoidCallback onPressed) => IconButton(
      icon: Icon(iconData),
      iconSize: 64.0,
      onPressed: onPressed,
    );

