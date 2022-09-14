import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;
  var num2 = 1;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Rock Paper Scissors'),
            backgroundColor: Color.fromARGB(255, 122, 162, 219),
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/i_$num1.png')),
                    Container(
                      width: 30,
                    ),
                    Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/i_$num2.png'))
                  ],
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 122, 162, 219)),
                  child: Text('Play!'),
                  onPressed: () {
                    play();
                  },
                ),
              )
            ]),
          ),
        ));
  }
}
