import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PayQr extends StatefulWidget {
  @override
  _PayQrState createState() => _PayQrState();
}

class _PayQrState extends State<PayQr> {
  String barcode = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('QR Code Scanner'),
        ),
        body: new Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  "images/qr.png",
                  height: 320.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 20.0, right: 40.0, left: 40.0),
                  child: RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: scan,
                      child: const Text('PAY')),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    barcode,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
