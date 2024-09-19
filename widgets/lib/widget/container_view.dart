// Box shadow

import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
          backgroundColor: Colors.grey[300],
        ),
        body: Center(
          child: Container(
            // alignment: Alignment(0, 0),
            alignment: Alignment.center,
            width: 150,
            height: 150,

            decoration: BoxDecoration(
              color: Colors.grey[300],
              // border: Border.all(color: Colors.black, width: 2),
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1)
              ],
              // shape: BoxShape.rectangle
            ),
            // child: const Text(
            //   'Container',
            //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            // ),
          ),
        ),
      ),
    );
  }
}
