import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FrAbout extends StatelessWidget {
  const FrAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos de cette application'),
      ),
      body: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan( // TODO remove or keep?
                  text: "\n \n \n Suivez Koradi Radio sur Telegram \n",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch("https://t.me/Koradi_en");
                    }),
              TextSpan(
                text: "\n \n Bienvenue sur l'application Koradi Radio!! \n "
                    "Si vous rencontrez des problèmes lors du premier démarrage de la lecture "
                    "essayez d'appuyer sur l'icône 'Stop'', puis reprenez la lecture "
                    "en appuyant sur l'icône 'Play'. Cela devrait résoudre les problèmes irréguliers "
                    "lecture en quelques secondes. \n \n"
                    "Veuillez envoyer par e-mail les descriptions de tout autre problème que vous pourriez rencontrer a:  \n \n  ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                  text: "koradiradio@gmail.com  \n \n",
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
            child: const Text("menu principal"),
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
