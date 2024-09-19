import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  const MySquare({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.8),
      child: Container(
        height: 250,
        color: Colors.pink,
        child: Center(
            child: Text(
          child,
          style: const TextStyle(fontSize: 40, color: Colors.white),
        )),
      ),
    );
  }
}
