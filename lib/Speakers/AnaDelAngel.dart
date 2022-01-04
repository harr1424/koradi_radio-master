import 'package:audio_service/audio_service.dart';
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/material.dart';
import 'package:koradi_radio/main.dart';

class AnaDelAngel extends StatelessWidget {
  AnaDelAngel({Key? key}) : super(key: key);
  fs.FirebaseStorage storage = fs.FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Del Angel'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '788-Gnostic Parenthood (P1) Children of Wisdom - Ana del Angel - Lecture Usa - KR (Sep-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Gnostic Parenthood: Intro (Part 1) - Ana Del Angel',
                        duration:
                            const Duration(hours: 1, minutes: 28, seconds: 31));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child:
                    const Text("Gnostic Parenthood: Intro (Part 1)  - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '805-Gnostic Parenthood (Part 2) Maternity - Ana del Angel - Lecture from Usa - KR (Dec-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Gnostic Parenthood: Maternity (Part 2) - Ana Del Angel',
                        duration:
                            const Duration(hours: 1, minutes: 35, seconds: 41));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text(
                    "Gnostic Parenthood: Maternity (Part 2)  - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '814-Gnostic Parenthood (Part 3) Infantяs Self-Cognizance - Ana del Angel - Usa - KR (Jan-2021).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Gnostic Parenthood: Infant\s Self Cognizance (Part 3) - Ana Del Angel',
                        duration:
                            const Duration(hours: 1, minutes: 54, seconds: 43));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text(
                    "Gnostic Parenthood: Infant\s Self Cognizance (Part 3)  - 2021")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '776-Happiness Through Superior Meditation - Ana del Angel - Lecture from Usa-KR (Aug-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Happiness Through Superior Meditation (Talk) - Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 54, seconds: 59));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text(
                    "Happiness Through Superior Meditation (Talk)  - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '776-Happiness Through Superior Meditation - Ana del Angel - Practice from Usa-KR (Aug-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Happiness Through Superior Meditation (Practice) - Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 50, seconds: 55));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text(
                    "Happiness Through Superior Meditation (Practice)  - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '789-Rune Ar - Ana del Angel - Practice from Usa - KoradiRadio (Oct-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title: 'Rune AR (Practice)- Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 47, seconds: 0));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune AR (Practice) - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '774-Rune Fa - Ana del Angel - Practice from Usa - KoradiRadio (Aug-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title: 'Rune FA (Practice)- Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 44, seconds: 3));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune FA (Practice) - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '781-Rune Is - Ana del Angel - Practice from Usa - KoradiRadio (Sep-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title: 'Rune IS (Practice)- Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 53, seconds: 3));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune IS (Practice) - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                        '819-Rune Sig - Ana del Angel - Practice from Usa - KoradiRadio (Jan-2021).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title: 'Rune SIG (Practice)- Ana Del Angel',
                        duration:
                        const Duration(hours: 0, minutes: 45, seconds: 20));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune SIG (Practice) - 2021")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '827-Rune Tyr - Bar - Ana del Angel - Practice from Usa - KoradiRadio (Mar-2021).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'Rune Tyr - Bar (Practice) - Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 43, seconds: 10));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune Tyr - Bar (Practice) - 2021")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                        '831-Rune Ur - Ana del Angel - Practice from Usa - KoradiRadio (Mar-2021).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                        'Rune Ur (Practice) - Ana Del Angel',
                        duration:
                        const Duration(hours: 0, minutes: 30, seconds: 29));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("Rune Ur (Practice) - 2021")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                        '761-The Science of Meditation - Ana del Angel Lecture from Usa - KoradiRadio (Jun-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                        'The Science of Meditation (Talk) - Ana Del Angel',
                        duration:
                        const Duration(hours: 0, minutes: 59, seconds: 59));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child: const Text("The Science of Meditation (Talk) - 2020")),
            ElevatedButton(
                onPressed: () {
                  Future<void> stream() async {
                    String URL = await storage
                        .ref(
                            '761-The Science of Meditation - Ana del Angel Practice from Usa - KoradiRadio (Jun-2020).mp3')
                        .getDownloadURL();

                    // connect URL to media player and stream online
                    var talk = MediaItem(
                        id: URL,
                        title:
                            'The Science of Meditation (Practice) - Ana Del Angel',
                        duration:
                            const Duration(hours: 0, minutes: 45, seconds: 29));
                    audioHandler.playMediaItem(talk);
                    audioHandler.play();
                  }

                  stream();
                },
                child:
                    const Text("The Science of Meditation (Practice) - 2020")),
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
      ),
    );
  }
}
