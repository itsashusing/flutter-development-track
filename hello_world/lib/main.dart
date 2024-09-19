import 'package:flutter/material.dart';

void main(){
  runApp( ExpandedView())
}
class ExpandedView extends StatelessWidget {
  const ExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Expanded'),
            backgroundColor: Colors.yellow,
          ),
          drawer: const Drawer(),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                width: 50,
              ),
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: Colors.redAccent,
                    height: 100,
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                    child: Image.network(
                        'https://imgs.search.brave.com/hbFr1U7-tiJPDWYhQxRHVJbU1316TLLX4euBXNYDONw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzE3LzMxLzEx/LzM2MF9GXzUxNzMx/MTEyNl9lTm5SZWF0/VnVmOWJMSTNlSE10/T1FoWkJuR2xYeVFD/ZC5qcGc'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 100,
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
