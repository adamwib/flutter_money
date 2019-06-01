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
          Card(
            child: ListBody(
              children: <Widget>[
                Text("DompetQ Payment"),
                Text("#DompetQ"),
                Text("#id11111"),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "- Rp. 50.000",
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Text("1 Juni 2019, 07:11")
              ],
            ),
          ),
          Card(
            child: ListBody(
              children: <Widget>[
                Text("DompetQ Top Up"),
                Text("#DompetQ"),
                Text("#id11112"),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "- Rp. 50.000",
                  style: TextStyle(color: Colors.green),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Text("1 Juni 2019, 07:11")
              ],
            ),
          )
        ],
      ),
    );
  }
}
