import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('6SIA6'),
        ),
        body: Pengunjung(),
      ),
    );
  }
}

class DataPengunjung {
  String nip;
  String nama;
  String asal;
  String jkelamin;
  String umur;

  DataPengunjung({this.nip, this.nama, this.asal, this.jkelamin, this.umur});
}

// class Pengunjung
class Pengunjung extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Pengunjung> {
  //deklarasi variabel
  final txtnip = TextEditingController();
  final txtnamapgj = TextEditingController();
  final txtjkelamin = TextEditingController();
  final txtumur = TextEditingController();

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Text(txtumur.text),
        title: Text(txtnamapgj.text),
        subtitle: Text(txtnip.text),
        trailing: Text(txtjkelamin.text),
      ));
      txtnip.clear();
      txtnamapgj.clear();
      txtumur.clear();
      txtjkelamin.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: txtnip,
                decoration: InputDecoration(hintText: 'NIRM Mahasiswa'),
              ),
              TextField(
                controller: txtnamapgj,
                decoration: InputDecoration(hintText: 'Nama Mahasiswa'),
              ),
              TextField(
                controller: txtumur,
                decoration: InputDecoration(hintText: 'Umur'),
              ),
              TextField(
                controller: txtjkelamin,
                decoration: InputDecoration(hintText: 'Jenis Kelamin'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}
