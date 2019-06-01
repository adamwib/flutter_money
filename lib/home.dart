import 'package:flutter/material.dart';
import 'package:fluttermoney/helpq.dart';
import 'package:fluttermoney/histori.dart';
import 'package:fluttermoney/payqr.dart';
import 'package:fluttermoney/setting.dart';
import 'package:fluttermoney/topup.dart';
import 'package:fluttermoney/withdraw.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("DompetQ"),
        actions: <Widget>[
          Center(child: Text("Rp. 1.000.000     ")),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => PayQr()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/pay.png',
                              height: 100.0,
                            ),
                            Text(
                              "Pay",
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TopUp()));
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/top-up.png',
                              height: 100.0,
                            ),
                            Text(
                              "Top-Up",
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Histori()));
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/history.png',
                            height: 100.0,
                          ),
                          Text(
                            "History",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Withdraw()));
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/withdraw.png',
                            height: 100.0,
                          ),
                          Text(
                            "Withdraw",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Setting()));
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/setting.png',
                            height: 100.0,
                          ),
                          Text(
                            "Setting",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HelpQ()));
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/help.png',
                            height: 100.0,
                          ),
                          Text(
                            "Help",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
