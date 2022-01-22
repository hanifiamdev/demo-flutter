import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Dragable"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // lingkaran sejajar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape:
                            StadiumBorder(), // ini membuat pojokan jadi melengkung , karena width dan height kebetulan sama 50 maka membentuk serperti lingkaran
                        elevation: // elevation untuk mengatur ketinggian sehingga memunculkan efek shadow
                            3,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.grey,
                        shape:
                            StadiumBorder(), // ini membuat pojokan jadi melengkung , karena width dan height kebetulan sama 50 maka membentuk serperti lingkaran
                        elevation: // elevation untuk mengatur ketinggian sehingga memunculkan efek shadow
                            0,
                      ),
                    ),
                    //ketika kodisi sedang di drag
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape:
                            StadiumBorder(), // ini membuat pojokan jadi melengkung , karena width dan height kebetulan sama 50 maka membentuk serperti lingkaran
                        elevation: // elevation untuk mengatur ketinggian sehingga memunculkan efek shadow
                            3,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
