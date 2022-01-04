import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class AndrusSchilling extends StatelessWidget {
  AndrusSchilling({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andrus Schilling'),
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
                          '741-Gnostic Tarot & Kabalah (part13) Arcanum 11-Andrus Shilling Lecture Usa - KR (Feb-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 11 - Andrus Schilling',
                      duration:
                          const Duration(hours: 0, minutes: 44, seconds: 16));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 11 - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '747-Gnostic Tarot & Kabalah (part14) Arcanum 12-Andrus Shilling Lecture Usa - KR (Mar-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 12 - Andrus Schilling',
                      duration:
                          const Duration(hours: 1, minutes: 5, seconds: 31));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 12 - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '757-Gnostic Tarot & Kabalah (part15) Arcanum 13-Andrus Shilling Lecture Usa - KR (May-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 13 - Andrus Schilling',
                      duration:
                          const Duration(hours: 1, minutes: 16, seconds: 38));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 13 - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '798-Gnostic Tarot & Kabalah (part16) Arcanum 14-Andrus Shilling Lecture Usa - KR (Nov-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 14 - Andrus Schilling',
                      duration:
                          const Duration(hours: 0, minutes: 53, seconds: 20));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 14 - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '825-Gnostic Tarot & Kabalah (part17) Arcanum 15 - Andrus Shilling - Lecture Usa - KR (Feb-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 15 - Andrus Schilling',
                      duration:
                      const Duration(hours: 1, minutes: 09, seconds: 48));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 15 - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '845-Gnostic Tarot & Kabalah (part18) Arcanum 16 - Andrus Shilling - Lecture Usa-KR (May-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Arcanum 16 - Andrus Schilling',
                      duration:
                      const Duration(hours: 0, minutes: 53, seconds: 28));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Arcanum 16 - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '765-Meditation with O vowel - Andrus Shilling Practice from Usa - KoradiRadio (Jul-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title: 'Meditation with O Vowel - Andrus Schilling',
                      duration:
                          const Duration(hours: 0, minutes: 57, seconds: 11));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Meditation with O Vowel - 2020")),
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
