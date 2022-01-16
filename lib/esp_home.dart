import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:koradi_radio/sobre_esto.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

import 'esp_detail_screen.dart';
import 'main.dart';
import 'media_state.dart';

class EspHome extends StatefulWidget {
  var audioHandler;

  EspHome({Key? key, this.audioHandler}) : super(key: key);

  @override
  _EspHomeState createState() => _EspHomeState();
}

class _EspHomeState extends State<EspHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipo Koradi'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Hero(
                tag: 'Noticias de Koradi',
                child: Image.network(
                  'http://koradi.org/en/next_lecture.jpg',
                  height: 400,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const EspDetailScreen();
                }));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var stream = const MediaItem(
                      id: 'http://pad20.com:8500/vivo',
                      title: 'Transmisión de Equipo Koradi',
                    );
                    audioHandler.playMediaItem(stream);
                    audioHandler.play();
                  },
                  child: const Text("Transmisión de Koradi"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to downloads page on website
                    launch("http://koradi.org/es/descargas/");
                  },
                  child: const Text("Descargas"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      var url = params.toString();
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: const Text("Envíenos un Correo")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SobreEsto()),
                      );
                    },
                    child: const Text("Sobre Esto")),
              ],
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
            //Display  Progress Bar
            StreamBuilder<MediaState>(
              stream: _mediaStateStream,
              builder: (context, snapshot) {
                final mediaState = snapshot.data;
                return ProgressBar(
                  total: mediaState?.mediaItem?.duration ?? Duration.zero,
                  progress: mediaState?.position ?? Duration.zero,
                  onSeek: (position) {
                    audioHandler.seek(position);
                  },
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

/// A stream reporting the combined state of the current media item and its
/// current position.
Stream<MediaState> get _mediaStateStream =>
    Rx.combineLatest2<MediaItem?, Duration, MediaState>(
        audioHandler.mediaItem,
        AudioService.position,
            (mediaItem, position) => MediaState(mediaItem, position));

IconButton _button(IconData iconData, VoidCallback onPressed) => IconButton(
  icon: Icon(iconData),
  iconSize: 64.0,
  onPressed: onPressed,
);

// Used for sending email from Home screen
final Uri params = Uri(
  scheme: 'mailto',
  path: 'koradiradio@gmail.com',
  query:
  'subject=Mensaje del usuario de la aplicación&body=Escribe tu mensaje aquí...',
);
