import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.green;
  bool isAccepted = false;

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
                        shape: StadiumBorder(),
                        elevation: 0,
                      ),
                    ),
                    //ketika kodisi sedang di drag
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true, // menerima draggable
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                }, // fungsi yang akan dilakukan ketika menerima dragable
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                          ),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.black26,
                            shape: StadiumBorder(),
                          ),
                        );
                }, // untuk membuat widget dari dragtarget ini
              )
            ],
          )),
    );
  }
}
