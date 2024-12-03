import 'package:codecraft_mobile/pages/home.dart';
import 'package:codecraft_mobile/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool lightTheme = true;
  bool userConnected = false;

  void updateState(bool pUserConnected) {
    setState(() {
      userConnected = pUserConnected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: lightTheme ? ThemeData.light() : ThemeData.dark(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.cyan,
            brightness: lightTheme ? Brightness.light : Brightness.dark),
        // appBarTheme: const AppBarTheme(backgroundColor: Colors.cyan)
      ),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.teal,
          title: const Text(
            "CodeCraft",
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.account_box,
                size: 30,
              ),
              onPressed: () {
                userConnected
                    ? setState(() => userConnected = false)
                    : setState(() => userConnected = true);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.thermostat,
                size: 30,
              ),
              onPressed: () {
                lightTheme
                    ? setState(() => lightTheme = false)
                    : setState(() => lightTheme = true);
              },
            ),
          ],
        ),
        body: userConnected ? const HomePage() : const LoginPage(),
      ),
    );
  }
}
