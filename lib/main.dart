import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class ScoreApp extends StatelessWidget {
  // const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  // const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score changer"),
        centerTitle: true,
      ),
    );
  }
}
