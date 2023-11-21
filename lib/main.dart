import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _fontSize = 20;

  void _increaseFontSize() {
    setState(() {
      _fontSize = _fontSize == 20 ? 32 : 20;
    });
  }

  void _executeCode() {
    int result;

    for (int i = 10; i >= 0; i--) {
      try {
        result = 10 ~/ i;
        print(result);
      } catch (e) {
        print('Fehler aufgetreten: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Font Size'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              style: TextStyle(fontSize: _fontSize, color: Colors.black),
              duration: const Duration(seconds: 1),
              child: Text('Hello, App Akademie!'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _executeCode();
              },
              child: Text('Code ausführen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseFontSize,
        tooltip: 'Increase Font Size',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}