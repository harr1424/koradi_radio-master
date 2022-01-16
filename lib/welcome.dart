import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koradi_radio/english_home.dart';
import 'package:koradi_radio/esp_home.dart';

class Welcome extends StatelessWidget {
  var audioHandler;

  Welcome({Key? key, this.audioHandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elige tu idioma / Choose your language"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EspHome(
                                  audioHandler: audioHandler,
                                )));
                  },
                  child: Text("Español")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnglishHome(
                                audioHandler: audioHandler,
                              )));
                },
                child: Text("English"),
              ),
            ]),
          ]),
    );
  }
}
