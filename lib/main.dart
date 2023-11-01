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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Font Size'),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          style: TextStyle(fontSize: _fontSize),
          duration: const Duration(seconds: 1),
          child: Text('Hello, App Akademie!'),
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