import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Login(),
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
              "https://cdn-images-1.medium.com/max/1200/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
              height: 150.0,
            ),
            Text(
              "Flutter Money",
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
                onPressed: () {},
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
