import 'package:flutter/material.dart';

void main() {
  runApp(MyImages());
}

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.blue,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(10),
                width: 300,
                height: 200,
                child: Image.asset('assets/images/logo.jpg')),
          ),
        ));
  }
}
