import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({Key? key}) : super(key: key);

  @override
  _SendEmailState createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  final textController = TextEditingController();
  String message = "Type your message here";

  @override
  void setState(VoidCallback fn) {
    message = textController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Koradi Radio'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your message for Koradi Radio here",
                ),
                style: const TextStyle(
                  fontSize: 14.0,
                  height: 1.5,
                ),
                controller: textController,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final Uri params = Uri(
                    scheme: 'mailto',
                    path: 'harr1424@pm.me',
                    query: 'subject=A Message From App User&body=${message}',
                  );

                  var url = params.toString();
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not send email';
                  }

                  Fluttertoast.showToast(
                    msg: "Your message has been sent! Thank you 🙏",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.grey,
                    // textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: const Text("Send")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Main Menu"))
          ],
        ),
      ),
    );
  }
}
