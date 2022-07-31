import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'fr_about.dart';
import 'fr_detail_screen.dart';
import 'main.dart';

class FrenchHome extends StatefulWidget {
  var audioHandler;

  FrenchHome({Key? key, this.audioHandler}) : super(key: key);

  @override
  _FrenchHomeState createState() => _FrenchHomeState();
}

class _FrenchHomeState extends State<FrenchHome> {

  MediaItem frnStream = const MediaItem(
      id: "https://sonic.dattalive.com/8228/stream", title: "Flux Radio Koradi"
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koradi Radio'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Hero(
                tag: 'Koradi Bulletin',
                child: Image.network(
                  'https://koradi.org/fr/next.jpg',
                  height: 400,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const FrenchDetailScreen();
                }));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    audioHandler.playMediaItem(frnStream);
                  },
                  child: const Text("Radio Lecteur"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to downloads page on website
                    launch("http://koradi.org/fr/telechargements/");
                  },
                  child: const Text("Téléchargements"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(  // TODO UPDATE
                    onPressed: () async {
                      launch("http://koradi.org/fr/contact/");
                    },
                    child: const Text("Contact")),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FrAbout()),
                      );
                    },
                    child: const Text("Info")),
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
            // Display the processing state.
            StreamBuilder<AudioProcessingState>(
              stream: audioHandler.playbackState
                  .map((state) => state.processingState)
                  .distinct(),
              builder: (context, snapshot) {
                final processingState =
                    snapshot.data ?? AudioProcessingState.idle;
                return Text("Status: ${describeEnum(processingState)}");
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

