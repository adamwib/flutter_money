import 'package:flutter/material.dart';
import 'package:fluttermoney/main.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Adam Wibowo"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text("adamw1613@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text("085327770335"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text("Password"),
              trailing: Icon(Icons.edit),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("PIN"),
              trailing: Icon(Icons.edit),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text(
              "Sign Out",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
