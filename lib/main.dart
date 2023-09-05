import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade600,
          title: Text(
            "Dicee",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: DiceeApp(),
      ),
    );
  }
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({super.key});

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int randomValue = 1;
  int randomValue2 = 1;
  void rollingDicee() {
    setState(
      () {
        randomValue = Random().nextInt(6) + 1;
        randomValue2 = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 150.0, 8.0, 4.0),
                  child: Image(
                    image: AssetImage("images/dice$randomValue.png"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 150.0, 8.0, 4.0),
                  child: Image(
                    image: AssetImage("images/dice$randomValue2.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(170.0, 20.0, 170.0, 0.0),
                child: GestureDetector(
                  onTap: () {
                    rollingDicee();
                  },
                  child: Image(
                    image: AssetImage("images/button.jpg"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
