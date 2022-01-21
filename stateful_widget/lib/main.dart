import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget  Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number.toString()),
            RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tekanTombol) // tombol button
          ],
        ),
      ),
    ));
  }

  void tekanTombol() {
    // Dengan setState tampilan baru dapat berubah
    // kareana method ini akan merubah tampilan sesuai state saat ini
    setState(() {
      number++;
    });
  }
}
