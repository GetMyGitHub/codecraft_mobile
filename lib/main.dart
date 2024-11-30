import 'package:flutter/material.dart';

import 'screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return const ScreenHome();
    //   MaterialApp(
    //   debugShowCheckedModeBanner: true,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Codecraft"),
    //       backgroundColor: Colors.blueAccent,
    //     ),
    //     body: const Center(
    //         child: Text(
    //             "Bienvenue sur l'appli du salon...",
    //           style: TextStyle(
    //             fontSize: 24,
    //           ),
    //         )
    //     ),
    //   ),
    // );

  }
}
