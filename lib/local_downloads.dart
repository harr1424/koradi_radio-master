/* 1/1/2022 package path_provider is not retrieving an accurate
appDocDir and so download functionality is not possible.

This file contains a template for implementing a downloads route as well as
code to implement download functionality on a given speaker's route.
 */

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io' as io;
//
// class LocalDownloads extends StatefulWidget {
//   const LocalDownloads({Key? key}) : super(key: key);
//
//   @override
//   _LocalDownloadsState createState() => _LocalDownloadsState();
// }
//
// class _LocalDownloadsState extends State<LocalDownloads> {
//   String directory = '';
//   List files = [];
//   void initState() {
//     super.initState();
//     _listDownloads();
//   }
//
//   void _listDownloads() async {
//     directory = (await getApplicationDocumentsDirectory()).path;
//     setState(() {
//       files = io.Directory("${directory}").listSync();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Downloads"),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: ListView.builder(
//                   itemCount: files.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Text(files[index].path);
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//}

// class ReneBarge extends StatelessWidget {
//   ReneBarge({Key? key}) : super(key: key);
//   fs.FirebaseStorage storage = fs.FirebaseStorage.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     WidgetsFlutterBinding.ensureInitialized();
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Rene Barge'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(child:
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {}, child: const Text("Gnosis is Lived In Deeds")),
//                 ElevatedButton(
//                     onPressed: () {
//                       Future<void> stream() async {
//                         String URL = await storage
//                             .ref(
//                             'Gnosis is Lived in Deeds - Rene Barge Lecture from Usa - KoradiRadio (May-2011).mp3')
//                             .getDownloadURL();
//
//                         // connect URL to media player and stream online
//                         var talk = MediaItem(
//                             id: URL,
//                             title: 'Gnosis is Lived In Deeds - Rene Barge',
//                             duration:
//                             const Duration(hours: 1, minutes: 44, seconds: 34));
//                         audioHandler.playMediaItem(talk);
//                         audioHandler.play();
//                       }
//
//                       stream();
//                     },
//                     child: const Text("Stream")),
//
//                 ElevatedButton(
//                     onPressed: () {
//                       Future<void> download() async {
//                         var dir = getApplicationDocumentsDirectory().toString();
//                         String URL = await storage
//                             .ref(
//                             'Gnosis is Lived in Deeds - Rene Barge Lecture from Usa - KoradiRadio (May-2011).mp3')
//                             .getDownloadURL();
//                         final downloadTask = await FlutterDownloader.enqueue(
//                           url: URL,
//                           savedDir: dir,
//                           showNotification: true,
//                           openFileFromNotification: true,
//                         );
//                       }
//                       download();
//                     },
//                     child: const Text("Download")),
//               ],
//             ),
//             ),
//             ElevatedButton(
//               child: const Text("Back to Speakers"),
//               onPressed: () {
//                 // Return to first route
//                 Navigator.pop(context);
//               },
//             ),
//             ElevatedButton(
//               child: const Text("Main Menu"),
//               onPressed: () {
//                 // Return to first route
//                 Navigator.of(context).popUntil((route) => route.isFirst);
//               },
//             ),
//           ],
//         )
//     );
//   }
// }
