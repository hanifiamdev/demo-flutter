import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Image")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage("assets/wahanaKodingBaru.png"),
                  fit: BoxFit
                      .cover, //  contain : menampilakan seluruh gambar dengan proporsi yang tepat, fill : menampilkan seluruh gambar tapi dan memaksa tidak memiliki ruang kosong sehingga kurang proporsional
                ),
              ),
              //Add image from resource
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://kuyou.id/content/images/biodata-pratama-arhan-lengkap-agama-dan-umur-pemain-muda-terbaik-di-liga-menpora-2021-20210428090325.jpg"),
                  fit: BoxFit
                      .contain, //  contain : menampilakan seluruh gambar dengan proporsi yang tepat, fill : menampilkan seluruh gambar tapi dan memaksa tidak memiliki ruang kosong sehingga kurang proporsional
                  repeat: ImageRepeat.repeatY, // diulang ulang
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
