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
              'https://koradi.org/es/next.jpg',
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
