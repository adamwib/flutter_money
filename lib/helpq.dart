import 'package:flutter/material.dart';

class HelpQ extends StatefulWidget {
  @override
  _HelpQState createState() => _HelpQState();
}

class _HelpQState extends State<HelpQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Siapakah BAMBANK ini ?"),
            ),
            Divider(),
            ListTile(
              title: Text("Bagaimana cara saya Top Up ?"),
            ),
            Divider(),
            ListTile(
              title: Text("Bagaimana cara bertransaksi ?"),
            ),
            Divider(),
            ListTile(
              title: Text("Bagaimana saya withdraw ?"),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
