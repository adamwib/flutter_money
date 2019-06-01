import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Silakan isi data pengguna",
                  style: TextStyle(fontSize: 20.0),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Masukan Nama"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Masukan Password"),
                ),
                SizedBox(
                  height: 50.0,
                ),
                MaterialButton(
                  color: Colors.pink[100],
                  onPressed: () {},
                  child: Text("Sign Up", style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
