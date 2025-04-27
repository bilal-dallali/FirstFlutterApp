import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/background.png"),
                const Text(
                  "Hello there!",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "This is a simple Flutter app.",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
