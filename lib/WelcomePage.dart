import 'package:flutter/material.dart';

import 'FormPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
            direction: Axis.horizontal,
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/HFF Logo.png',
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  const Text(
                    'COMMUNITY SURVEY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        letterSpacing: -0.5),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/indian.png',
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                  const Text(
                    'WELCOME [CHE NAME]',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        letterSpacing: 3,
                        color: Color.fromARGB(212, 128, 128, 128)),
                  ),
                  const Text(
                    'Interviews in Progress: [num]',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(212, 128, 128, 128),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(12)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 11, 173, 95),
                        elevation: 0,
                        minimumSize: const Size(180, 30),
                        padding: const EdgeInsets.all(20)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FormPage()),
                      );
                    },
                    child: const Text(
                      "New Interview",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(12)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 11, 173, 95),
                        elevation: 0,
                        minimumSize: const Size(180, 30),
                        padding: const EdgeInsets.all(20)),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const form()),
                      // );
                    },
                    child: const Text(
                      "Update Interview",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
