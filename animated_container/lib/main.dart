import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Container"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () { // Jika ada tap maka aka mentrigger
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(
                  255,
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256)), // warna campuran red-green-blue
              duration: Duration(seconds: 1), // durasi animasi 1 detik
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
