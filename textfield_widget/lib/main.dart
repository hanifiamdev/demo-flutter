import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    icon: Icon(Icons.adb),
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    prefixIcon: Icon(Icons.person), //include Icon in fieldText
                    prefixText: "Name: ",
                    hintText: "Nama lengkapnya lho..",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Nama Lengkap",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10)) // InputBorder.none = hilang garisnya
                    ),
                //obscureText: true, // mengganti dewngan text yang diketik ....
                maxLength: 5, // maksimal text
                onChanged: (value) {
                  // supaya ketika ketik langusng reload
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text) // membaca inputan text
            ],
          ),
        ),
      ),
    );
  }
}
