import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Page'),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image.asset("assets/images/hiboux.png"),
              const Text(
                "Hello there!",
                style: TextStyle(
                  fontSize: 42,
                  fontFamily: "Urbanist",
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "This is a simple Flutter app.",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w900,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.from(alpha: 1, red: 0.96, green: 0.28, blue: 0.29),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventPage(),
                    ),
                  );
                },
                child: const Text("Go to Event Page",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Urbanist",
                      color: Color.from(alpha: 1, red: 1, green: 1, blue: 1),
                      fontWeight: FontWeight.w900,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
