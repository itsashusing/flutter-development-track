import 'package:flutter/material.dart';
import 'package:widgets/circle.dart';
import 'package:widgets/square.dart';

void main() {
  runApp(List_view());
}

class List_view extends StatelessWidget {
  final List _posts = ['Post 1', 'Post 2', 'Post 3', 'Post 4'];
  final List _stories = ['Story 1', 'Story 2', 'Story 3', 'Story 4'];

  // const List_view({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Hamara Instagram'),
            backgroundColor: Colors.yellow,
          ),
          body: Column(
            children: [
              SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: _stories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyCircle(child: _stories[index]);
                      })),

              // For Posts
              Expanded(
                child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return MySquare(child: _posts[index]);
                    }),
              ),
            ],
          )),
    );
  }
}
