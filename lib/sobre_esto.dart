import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreEsto extends StatelessWidget {
  const SobreEsto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: "\n \n \n Sigue a Equipo Koradi en Telegram \n",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch("https://t.me/Koradi_es");
                    }),
              TextSpan(
                text: "\n \n ¡Bienvenido a la aplicación Equipo Koradi! \n "
                    "Si tiene problemas al comenzar la reproducción por primera vez "
                    "intenta presionar el ícono 'Detener' y luego reanuda la reproducción"
                    "pulsando el icono 'Reproducir'. Esto debería resolverse de forma irregular"
                    "reproducción en unos segundos🍊 \n \n"
                    "Envíe por correo electrónico las descripciones de cualquier otro problema que pueda encontrar a ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                  text: "koradiradio@gmail.com 🙏🙏🙏 \n",
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
            child: const Text("Main Menu"),
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
  path: 'harr1424@pm.me',
  query:
  'subject=Mensaje del usuario de la aplicación&body=Escribe tu mensaje aquí...',
);
