import 'package:flutter/material.dart';

class Histori extends StatefulWidget {
  @override
  _HistoriState createState() => _HistoriState();
}

class _HistoriState extends State<Histori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riwayat"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.arrow_upward),
                title: Text("DompetQ Payment"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("jenis transaksi"),
                    Text("id Transaksi")
                  ],
                ),
                trailing: Text(
                  "- Rp. 50.000",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.arrow_downward),
                title: Text("DompetQ Payment"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("jenis transaksi"),
                    Text("id Transaksi")
                  ],
                ),
                trailing: Text(
                  "+ Rp. 50.000",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.arrow_upward),
                title: Text("DompetQ Payment"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("jenis transaksi"),
                    Text("id Transaksi")
                  ],
                ),
                trailing: Text(
                  "- Rp. 50.000",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
