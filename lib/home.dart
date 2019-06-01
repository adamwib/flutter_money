import 'package:flutter/material.dart';

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
        actions: <Widget>[Center(child: Text("Rp. 1.000.000"))],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.network("http://dublinhire.com/wp-content/uploads/2015/10/dollar_coin_payment-512.png", height: 100.0,),
                        Text("Pay", style: TextStyle(fontSize: 16.0),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.network("https://developer.jsbl.com/sites/all/themes/apigee_responsive_custom/images/overview-topup.png", height: 100.0,),
                        Text("Top-Up", style: TextStyle(fontSize: 16.0),)
                      ],
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
                    Column(
                      children: <Widget>[
                        Image.network("https://sitejerk.com/images/transaction.png", height: 100.0,),
                        Text("Histori", style: TextStyle(fontSize: 16.0),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.network("https://img.icons8.com/cotton/2x/insert-card--v1.png", height: 100.0,),
                        Text("Withdraw", style: TextStyle(fontSize: 16.0),)
                      ],
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
                    Column(
                      children: <Widget>[
                        Image.network("https://cdn4.iconfinder.com/data/icons/web-ui-color/128/Settings-512.png", height: 100.0,),
                        Text("Setting", style: TextStyle(fontSize: 16.0),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.network("https://cdn2.iconfinder.com/data/icons/flat-style-svg-icons-part-1/512/confirmation_verification-512.png", height: 100.0,),
                        Text("Help", style: TextStyle(fontSize: 16.0),)
                      ],
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
