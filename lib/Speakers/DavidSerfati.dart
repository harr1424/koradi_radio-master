import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class DavidSerfati extends StatelessWidget {
  DavidSerfati({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('David Serfati'),
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
                          '780-Attacks of B. M. Prevention and Psychic Defense (P1A) - David Serfati Mx - KR (Aug-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Attacks of BM Prevention and Psychic Defense (Part 1A)  - David Serfati',
                      duration:
                          const Duration(hours: 1, minutes: 20, seconds: 5));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 1A) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '780-Attacks of B. M. Prevention and Psychic Defense (P1B) - David Serfati Mx - KR (Aug-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Attacks of BM Prevention and Psychic Defense (Part 1B)  - David Serfati',
                      duration:
                          const Duration(hours: 0, minutes: 45, seconds: 55));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 1B) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '822-Attacks of B. M. Prevention and Psychic Defense (P2A) - David Serfati Mx - KR (Feb-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 2A)  - David Serfati',
                      duration:
                      const Duration(hours: 0, minutes: 51, seconds: 16));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 2A) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '822-Attacks of B. M. Prevention and Psychic Defense (P2B) - David Serfati Mx - KR (Feb-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 2B)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 46, seconds: 43));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 2B) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '850-Attacks of B. M. Prevention and Psychic Defense (P3A) - D.Serfati & A.Shilling-KR(May-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 3A)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 20, seconds: 30));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 3A) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '850-Attacks of B. M. Prevention and Psychic Defense (P3B) - D.Serfati & A.Shilling-KR(May-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 3B)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 09, seconds: 27));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 3B) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '871-Attacks of B. M. Prevention and Psychic Defense (P4A) - David Serfati Mx - KR (Sep-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 4A)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 20, seconds: 59));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 4A) - 2021")),          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '871-Attacks of B. M. Prevention and Psychic Defense (P4B) - David Serfati Mx - KR (Sep-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Attacks of BM Prevention and Psychic Defense (Part 4B)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 25, seconds: 57));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Attacks of BM Prevention and Psychic Defense (Part 4B) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '842-Ego Death in 22 Steps - David Serfati - Practice from Mexico - KoradiRadio (Apr-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Ego Death in 22 Steps (Practice)  - David Serfati',
                      duration:
                      const Duration(hours: 1, minutes: 08, seconds: 24));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text(
                  "Ego Death in 22 Steps (Practice) - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                      '815-Jeu; The Great Enlightener - David Serfati - Practice from Mexico - KoradiRadio (Jan-2021).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                      'Jeu; The Great Enlightener - David Serfati',
                      duration:
                      const Duration(hours: 0, minutes: 52, seconds: 45));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Jeu; The Great Enlightener - 2021")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '762-P. to Heal the M. Body with H. Trismegistus and Raphael - D. Serfati Intro. Mx-KR(Jul-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Practice to Heal the Body (Intro)  - David Serfati',
                      duration:
                          const Duration(hours: 0, minutes: 8, seconds: 5));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Practice to Heal the Body (Intro) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '762-P. to Heal the M. Body with H. Trismegistus and Raphael - D. Serfati Practice RK-(Jul-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Practice to Heal the Body (Practice) - David Serfati',
                      duration:
                          const Duration(hours: 0, minutes: 33, seconds: 31));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Practice to Heal the Body (Practice) - 2020")),
          ElevatedButton(
              onPressed: () {
                Future<void> stream() async {
                  String URL = await storage
                      .ref(
                          '777-Prajnaparamita Meditation - David Serfati - Practice from Mexico - KoradiRadio (Aug-2020).mp3')
                      .getDownloadURL();

                  // connect URL to media player and stream online
                  var talk = MediaItem(
                      id: URL,
                      title:
                          'Prajnaparamita Meditation (Practice) - David Serfati',
                      duration:
                          const Duration(hours: 0, minutes: 31, seconds: 49));
                  audioHandler.playMediaItem(talk);
                  audioHandler.play();
                }

                stream();
              },
              child: const Text("Prajnaparamita Meditation (Practice) - 2020")),
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
