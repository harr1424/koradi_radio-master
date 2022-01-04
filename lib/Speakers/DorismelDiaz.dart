import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class DorismelDiaz extends StatelessWidget {
  DorismelDiaz({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dorismel Diaz'),
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
                          '769-Practice to Develop Mysticism - Dorismel Dбaz Practice from Canada - KR (Jul-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Practice to Develop Mysticism - Dorismel Diaz',
                      duration:
                          const Duration(hours: 0, minutes: 45, seconds: 06));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Practice to Develop Mysticism - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '830-Reconnecting with your Innermost - Dorismel Dбaz - Practice from Canada - KR (Mar-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Reconnecting with your Innermost (Practice) - Dorismel Dбaz - Dorismel Diaz',
                      duration:
                      const Duration(hours: 0, minutes: 42, seconds: 30));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Reconnecting with your Innermost (Practice) - 2021")),
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
