import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'detail_screen.dart';
import 'main.dart';
import 'media_state.dart';

class EnglishHome extends StatefulWidget {
  var audioHandler;

  EnglishHome({Key? key, this.audioHandler}) : super(key: key);

  @override
  _EnglishHomeState createState() => _EnglishHomeState();
}

class _EnglishHomeState extends State<EnglishHome> {
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
                  'https://koradi.org/en/next.jpg',
                  height: 400,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const DetailScreen();
                }));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launch("http://koradi.org/en/koradi-radio-app/");
                  },
                  child: const Text("Radio Player"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to downloads page on website
                    launch("http://koradi.org/en/downloads/");
                  },
                  child: const Text("Koradi Archives"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      launch("http://koradi.org/en/contact-app/");
                    },
                    child: const Text("Contact")),
                ElevatedButton(
                    onPressed: () {
                      launch("http://koradi.org/en/koradi-radio-meditation/");
                    },
                    child: const Text("Meditation")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const About()),
                      );
                    },
                    child: const Text("About")),
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
                return Text("Status: ${describeEnum(processingState)}");
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
      'subject=A Message From App User&body=Type your message to Koradi Radio here...',
);