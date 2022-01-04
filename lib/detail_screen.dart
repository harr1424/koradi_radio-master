import 'package:flutter/material.dart';

// DetailScreen() used to display fullscreen
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Koradi Bulletin',
            child: Image.network(
              'http://koradi.org/en/wp-content/uploads/2021/12/892-Rafael-Vargas-Ingles.jpg',
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
