import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(
              10, 15, 20, 25), // Jarak Left - Top - Right - Bottom
          padding: EdgeInsets.only(
              bottom: 20,
              top:
                  20), //hanya jarak yang tertentu ( disini bawah 20 dan atas 20)
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                // Widget Membuat dekorasi
                borderRadius: BorderRadius.circular(20), // border radius
                gradient: LinearGradient(
                    // Widget mebuat warna gradient
                    begin: Alignment.topLeft, // start warna gradient
                    end: Alignment.bottomRight, // akhir warna gradient
                    colors: <Color>[
                      // Array untuk definisi kombinasi warana
                      Colors.amber,
                      Colors.blue,
                      Colors.black
                    ])),
          ),
        ),
      ),
    );
  }
}
