import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class MarcMeinharth extends StatelessWidget {
  MarcMeinharth({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marc and Mira Meinharth'),
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
                          '764-Love and Death - Marc Meinharth Lecture from Australia - KoradiRadio (Jul-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Love and Death  - Marc Meinharth',
                      duration:
                          const Duration(hours: 1, minutes: 11, seconds: 25));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Love and Death - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '797-Simple R. and Awareness Strengthening P. - Marc Meintharh - Practice Au - KR (Nov-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Relaxation and Awareness (Practice)  - Marc Meinharth',
                      duration:
                          const Duration(hours: 0, minutes: 53, seconds: 01));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Relaxation and Awareness (Practice) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '796-The Lordяs Prayer; Our Father - Mira Meintharth - Practice from Australia - KR (Nov-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'The Lord\'s Prayer (Practice) - Mira Meinharth',
                      duration:
                          const Duration(hours: 0, minutes: 42, seconds: 07));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("The Lord\'s Prayer (Practice) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '770-Relaxation Transforming Daily Impressions - Mira Meintharth - Practice Au - KR (Aug-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Transforming Daily Impressions (Practice) - Mira Meinharth',
                      duration:
                          const Duration(hours: 0, minutes: 52, seconds: 25));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Transforming Daily Impressions (Practice) - 2020")),
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
