import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Eight_Ball_Screen());
  }
}

class Eight_Ball_Screen extends StatefulWidget {
  const Eight_Ball_Screen({super.key});

  @override
  State<Eight_Ball_Screen> createState() => _Eight_Ball_ScreenState();
}

class _Eight_Ball_ScreenState extends State<Eight_Ball_Screen> {
  int ballNumber = 1;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: TextButton(
          child: Image.asset('images/ball${ballNumber}.png'),
          onPressed: () {
            setState(
              () {
                ballNumber = random.nextInt(5) + 1;
              },
            );
          },
        ),
      ),
    );
  }
}
