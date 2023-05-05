import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatefulWidget {
  const ScoreApp({super.key});

  @override
  State<ScoreApp> createState() => _ScoreAppState();
}

class _ScoreAppState extends State<ScoreApp> {
  // const ScoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreChanger(),
    );
  }
}

class ScoreChanger extends StatefulWidget {
  const ScoreChanger({super.key});

  @override
  State<ScoreChanger> createState() => _ScoreChangerState();
}

class _ScoreChangerState extends State<ScoreChanger> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text('Score Changer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: () {},
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
            "Score is",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )),
          Center(
              child: Text(
            value.toString(),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 85,
              fontWeight: FontWeight.bold,
            ),
          )),
          const SizedBox(
            height: 25,
          ),
          // RaisedButton(
          //   child: Text('Increase'),
          //   onPressed: () {},
          // )
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value++;
                  });
                },
                child: const Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (value > 0) {
                      value--;
                    }
                  });
                },
                child: const Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
