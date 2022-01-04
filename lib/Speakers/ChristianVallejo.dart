import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class ChristianVallejo extends StatelessWidget {
  ChristianVallejo({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Christian Vallejo'),
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
                          '782-Muladhara Chakra Meditation - Christian Vallejo - Practice from Usa - KR (Sep-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Muladhara Chakra Meditation - Christian Vallejo',
                      duration:
                          const Duration(hours: 0, minutes: 31, seconds: 03));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Muladhara Chakra Meditation - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '785-Svadhisthana Chakra Meditation - Christian Vallejo - Practice from Usa - KR (Sep-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Svadhisthana Chakra Meditation - Christian Vallejo',
                      duration:
                          const Duration(hours: 0, minutes: 53, seconds: 26));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Svadhisthana Chakra Meditation - 2020")),
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
