import 'package:flutter/material.dart';
import 'package:fluttermoney/register.dart';

void main() => runApp(MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ));

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Image.network(
              "https://cdn.pixabay.com/photo/2018/10/03/11/31/wallet-3721156_960_720.png",
              height: 150.0,
            ),
            Text(
              "DompetQ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: MaterialButton(
                color: Colors.blue[300],
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "http://pngimg.com/uploads/google/google_PNG19635.png",
                      height: 50.0,
                    ),
                    Text(
                      "Login With Google",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
              child: MaterialButton(
                color: Colors.pink[100],
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Register()
                  ));
                },
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "http://pngimg.com/uploads/google/google_PNG19635.png",
                      height: 50.0,
                    ),
                    Text(
                      "Sign Up With Google",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
