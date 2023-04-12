import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
}

class ScoreHome extends StatefulWidget {
  
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
    );
  }
}
