import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  @override
  _TopUpState createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 200.0,),
              Text("Masukan Kode Voucher Disini"),
              SizedBox(height: 14.0,),
              TextFormField(),
              SizedBox(height: 16.0,),
              MaterialButton(
                color: Colors.blue[300],
                onPressed: () {},
                child: Text("Redeem"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
