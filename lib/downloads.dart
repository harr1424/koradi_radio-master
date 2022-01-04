import 'package:flutter/material.dart';
import 'package:koradi_radio/Speakers/AdolfoSuero.dart';
import 'package:koradi_radio/Speakers/DianaCipolletta.dart';
import 'package:koradi_radio/Speakers/MelanieMcHugh.dart';
import 'package:koradi_radio/Speakers/PatriciaGallagher.dart';
import 'package:koradi_radio/Speakers/ScottBillings.dart';

import 'Speakers/AnaDelAngel.dart';
import 'Speakers/AndrusSchilling.dart';
import 'Speakers/CarlyHerrero.dart';
import 'Speakers/ChristianVallejo.dart';
import 'Speakers/DavidSerfati.dart';
import 'Speakers/DorismelDiaz.dart';
import 'Speakers/MarcMeinharth.dart';
import 'Speakers/PaulMovsessian.dart';
import 'Speakers/RafaelArape.dart';
import 'Speakers/ReneBarge.dart';
import 'Speakers/ThomasNilsson.dart';

//TODO resume at 815

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koradi Archives'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdolfoSuero()),
                  );
                },
                child: const Text("Adolfo Suero")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnaDelAngel()),
                  );
                },
                child: const Text("Ana Del Angel")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AndrusSchilling()),
                  );
                },
                child: const Text("Andrus Schilling")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarlyHerrero()),
                  );
                },
                child: const Text("Carly Herrero (Carly Samish)")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChristianVallejo()),
                  );
                },
                child: const Text("Christian Vallejo")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DavidSerfati()),
                  );
                },
                child: const Text("David Serfati")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DianaCipolletta()),
                  );
                },
                child: const Text("Diana Cipolletta")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DorismelDiaz()),
                  );
                },
                child: const Text("Dorismel Diaz")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaulMovsessian()),
                  );
                },
                child: const Text("Paul Movsessian")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MarcMeinharth()),
                  );
                },
                child: const Text("Marc and Mira Meinharth")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MelanieMcHugh()),
                  );
                },
                child: const Text("Melanie McHugh")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatriciaGallagher()),
                  );
                },
                child: const Text("Patricia Gallagher")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RafaelArape()),
                  );
                },
                child: const Text("Rafael Arape")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReneBarge()),
                  );
                },
                child: const Text("Rene Barge")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScottBillings()),
                  );
                },
                child: const Text("Scott Billings")),
            ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThomasNilsson()),
                  );
                },
                child: const Text("Thomas Nilsson")),
            ElevatedButton(
              child: const Text("Main Menu"),
              onPressed: () {
                // Return to first route
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
