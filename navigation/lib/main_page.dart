import 'package:flutter/material.dart';
import 'package:navigation/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Go to second Page"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(), // lebih simple
                  ));
            },
          ),
        ));
  }
}
