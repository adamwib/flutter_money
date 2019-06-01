import 'package:flutter/material.dart';
import 'package:fluttermoney/home.dart';
import 'package:fluttermoney/register.dart';
import 'package:splashscreen/splashscreen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              Image.asset(
                'images/wallet.png',
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "DOMPETBAMBANK",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.red,
                      fontFamily: "bambank"),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Row(
                    children: <Widget>[
                      Image.network(
                          "http://pngimg.com/uploads/google/google_PNG19635.png",
                          height: 50.0,
                          color: Colors.white),
                      SizedBox(
                        width: 38.0,
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
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      height: 1.0,
                      width: 120.0,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Text(" ATAU "),
                    SizedBox(
                      height: 1.0,
                      width: 120.0,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24.0, top: 5.0),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Row(
                    children: <Widget>[
                      Image.network(
                          "http://pngimg.com/uploads/google/google_PNG19635.png",
                          height: 50.0,
                          color: Colors.white),
                      SizedBox(
                        width: 30.0,
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
      ],
    ));
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new Login(),
      title: new Text('',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.red
      ),),
      image: new Image.asset('images/wallet.png', height: 100.0,),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      // onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    );
  }
}
