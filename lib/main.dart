import 'package:flutter/material.dart';
import 'package:healing_fields_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Healing Fields Foundation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
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
                    height: 300,
                    width: 300,
                  ),
                ],
              ),
              const Text(
                'WELCOME',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    letterSpacing: 3,
                    color: Color.fromARGB(212, 128, 128, 128)),
              ),
              const Text(
                'Know your village. Know your neighbourhood. Know your people. Help each other to usher in a new way to keep the healthcare going',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(212, 128, 128, 128),
                ),
              ),
              const Padding(padding: EdgeInsets.all(12)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    minimumSize: const Size(180, 30),
                    padding: const EdgeInsets.all(20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
