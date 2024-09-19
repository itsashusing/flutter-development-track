import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: const HomePage(),
        theme: ThemeData(
            primaryColor: Colors.green,
            primarySwatch: Colors.green,
            brightness: Brightness.light));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";
  void _changeText() {
    setState(() {
      if (myText.startsWith('H')) {
        myText = "Welcome to Flutter";
      } else {
        myText = "Hello World";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myText,
              style: TextStyle(
                background: Paint()..color = Colors.yellow,
                color: Colors.pinkAccent,
                fontSize: 32.0,
              ),
            ),
            OutlinedButton(
                onPressed: _changeText,
                child: const Text(
                  'Button',
                  style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: _bodyWidget(),
    );
  }
}
