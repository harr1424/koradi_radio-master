import 'package:flutter/material.dart';

// DetailScreen() used to display fullscreen
class EspDetailScreen extends StatelessWidget {
  const EspDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Koradi Bulletin',
            child: Image.network(
              'http://koradi.org/en/next_lecture.jpg',
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
