import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
                  text: "\n \n \n Follow Koradi Radio on Telegram \n",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch("https://t.me/Koradi_en");
                    }),
              TextSpan(
                text: "\n \n Welcome to the Koradi Radio App! \n "
                    "If you encounter problems when first beginning playback "
                    "try pressing the 'Stop' icon and then resume playing "
                    "by pressing the 'Play' icon. This should resolve irregular "
                    "playback within a few seconds \n \n"
                    "Please email descriptions of any other problems you may encounter to: \n \n  ",
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
  query: 'subject=A Message From App User&body=Type your message here...',
);
