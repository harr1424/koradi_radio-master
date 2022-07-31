import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreEsto extends StatelessWidget {
  const SobreEsto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre la app'),
      ),
      body: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: "\n \n \n Sigue a Radio Koradi en Telegram \n",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch("https://t.me/Koradi_es");
                    }),
              TextSpan(
                text: "\n \n ¡Bienvenido a la aplicación de Radio Koradi! \n"
                    "Si tienes problemas al comenzar la reproducción por primera vez, presiona el ícono 'Detener' y luego reanuda la preproducción pulsando sobre el ícono 'Reproducir' \n"
                    "Esto debería resolver la reproducción irregular en unos segundos.\n \n"
                    "Envíanos por correo electrónico las descripciones de cualquier otro problema que puedas encontrar a: \n \n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                  text: "koradiradio@gmail.com\n",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url = params.toString();
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }),
            ]),
          ),
          ElevatedButton(
            child: const Text("Menú Principal"),
            onPressed: () {
              // Return to first route
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

// Used for sending email
final Uri params = Uri(
  scheme: 'mailto',
  path: 'koradiradio@gmail.com',
  query: 'subject=A Message From App User&body=Type your message here...',
);