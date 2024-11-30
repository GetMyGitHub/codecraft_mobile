// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child:
          Center(
            child: Container(
              width: 400.0,
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50.0,
                      bottom: 10.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    child:
                    const Text(
                      "Codecraft",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Url du serveur",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nom d'utilisateur",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child:
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mot de passe",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    child:
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                      child: const Text("Connexion"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
              ),
    );
  }
}
