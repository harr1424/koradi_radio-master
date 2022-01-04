import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class AdolfoSuero extends StatelessWidget {
  AdolfoSuero({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adolfo Suero'),
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
                      '848-The White Lodge and the G. M. (Part A) - Adolfo Suero - New Zealand - KR (May-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'The White Lodge and the G. M. (Part A) - Adolfo Suero',
                      duration:
                      const Duration(hours: 0, minutes: 46, seconds: 55));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("The White Lodge and the G. M. (Part A)  - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '848-The White Lodge and the G. M. (Part B) - Adolfo Suero - New Zealand - KR (May-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'The White Lodge and the G. M. (Part B) - Adolfo Suero',
                      duration:
                      const Duration(hours: 0, minutes: 37, seconds: 51));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("The White Lodge and the G. M. (Part B)  - 2021")),
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
