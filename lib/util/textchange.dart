import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // App and app bar title
  static const String _title = 'Change Text Dynamically';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(child: TextChanger()),
      ),
    );
  }
}

class TextChanger extends StatefulWidget {
  const TextChanger({super.key});

  @override
  State<TextChanger> createState() => _TextChangerState();
}

class _TextChangerState extends State<TextChanger> {
  // Declare the variable
  String dynamicText = 'Initial Text';

  updateText() {
    setState(() {
      dynamicText = 'This is new text value';
      // Replace with your logic
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$dynamicText', // Dynamic text
          style: const TextStyle(fontSize: 28),
        ),
        ElevatedButton(
          child: const Text('Change Text'),
          onPressed: () => updateText(), // Call the method
        ),
      ],
    );
  }
}