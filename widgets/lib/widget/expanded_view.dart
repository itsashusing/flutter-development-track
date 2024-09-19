import 'package:flutter/material.dart';

class ExpandedView extends StatelessWidget {
  const ExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Pavan Gandu ka app hai'),
              backgroundColor: Colors.yellow,
            ),
            drawer: const Drawer(),
            body: Row(
              children: [
                Container(
                  width: 50,
                  color: Colors.black,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.redAccent,
                        height: 100,
                        // width: 100,
                      ),
                      Center(
                        child: Container(
                          color: Colors.white,
                          height: 100,
                          child: const Text(
                            'Pavan Gandu',
                         
                            style: TextStyle(fontSize: 24),
                          ),
                          // width: 100,
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        height: 100,
                        // width: 100,
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
