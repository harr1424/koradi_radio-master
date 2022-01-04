import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class CarlyHerrero extends StatelessWidget {
  CarlyHerrero({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carly Herrero'),
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
                          '811-The Dissolution of the Body at Death - Carly Samish - Practice from Usa - KR (Jan-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'The Dissolution of the Body at Death - Carly Herrero',
                      duration:
                          const Duration(hours: 0, minutes: 31, seconds: 14));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("The Dissolution of the Body at Death - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '874-The Living Scripture of Nature - Carly Herrero - Lecture from Usa - KoradiRadio (Oct-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'The Living Scripture of Nature - Carly Herrero',
                      duration:
                      const Duration(hours: 1, minutes: 21, seconds: 21));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("The Living Scripture of Nature - 2021")),
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
