import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class PaulMovsessian extends StatelessWidget {
  PaulMovsessian({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paul Movsessian'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '818-Crime (Part 1A) - Paul Movsessian - Lecture from Australia - KoradiRadio (Jan-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Crime (Part 1A) - Paul Movsessian',
                      duration:
                      const Duration(hours: 1, minutes: 48, seconds: 05));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Crime (Part 1A) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '818-Crime (Part 1B) - Paul Movsessian - Lecture from Australia - KoradiRadio (Jan-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Crime (Part 1B) - Paul Movsessian',
                      duration:
                      const Duration(hours: 0, minutes: 43, seconds: 39));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Crime (Part 1B) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '833-Crime (Part 2A) - Paul Movsessian - Lecture from Australia - KoradiRadio (Mar-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Crime (Part 2A) - Paul Movsessian',
                      duration:
                      const Duration(hours: 1, minutes: 24, seconds: 02));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Crime (Part 2A) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '833-Crime (Part 2B) - Paul Movsessian - Lecture from Australia - KoradiRadio (Mar-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Crime (Part 2B) - Paul Movsessian',
                      duration:
                      const Duration(hours: 0, minutes: 24, seconds: 23));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Crime (Part 2B) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '739-Love is Law - Valentineяs Day Special (Part A) - Paul Movsessian Lecture Au - KR (Feb-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Love is Law (Part A) - Paul Movsessian',
                      duration:
                          const Duration(hours: 1, minutes: 17, seconds: 38));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Love is Law (Part A) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '739-Love is Law - Valentineяs Day Special (Part B) - Paul Movsessian Lecture Au - KR (Feb-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Love is Law (Part B) - Paul Movsessian',
                      duration:
                          const Duration(hours: 0, minutes: 42, seconds: 03));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Love is Law (Part B) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '826-Meditation on Dying - Paul Movsessian - Practice from Australia - KoradiRadio (Feb-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Meditation on Dying (Practice) - Paul Movsessian',
                      duration:
                      const Duration(hours: 1, minutes: 21, seconds: 01));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Meditation on Dying (Practice) - 2021")),
          ElevatedButton(
            child: const Text("Back to Speakers"),
            onPressed: () {
              // Return to first route
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: const Text("Main Menu"),
            onPressed: () {
              // Return to first route
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}
