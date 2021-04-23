import 'dart:io';
import 'package:MediQuick/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:wave_drawer/wave_drawer.dart';

// ignore: camel_case_types
class loginpg extends StatefulWidget {
  @override
  _loginpgState createState() => _loginpgState();
}

// ignore: camel_case_types
class _loginpgState extends State<loginpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEDIQUICK HOSPITALS'),
      ),
      drawer: WaveDrawer(
        backgroundColor: Color(0xfffbb448),
        boundaryColor: Colors.blue,
        boundaryWidth: 2.0,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome To MediQuick!",
              style: TextStyle(
                fontFamily: 'Lucida Sans',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.3,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "HERE IS YOUR QR CODE",
              style: TextStyle(
                fontFamily: 'Lucida Sans',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                letterSpacing: 0.3,
              ),
              textAlign: TextAlign.center,
            ),
            QrImage(
              data: "Gopika",
              version: QrVersions.auto,
              size: 200.0,
            ),
            ListTile(
              title: Text(
                "Scan QR code",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => QRViewExample(),
              )),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xfffbb448), Color(0xfff7892b)])),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyApp(),
                          )),
                      icon:
                          Icon(Icons.keyboard_arrow_left, color: Colors.black),
                      label: Text("Back")),
                  Row(children: <Widget>[
                    SizedBox(
                      width: 150,
                      child: Image.asset("asset/images/3.jpg"),
                    ),
                    Text(
                      'PATIENT NAME: GOPIKA \n BLOOD GROUP: \nUSER ID: GOPIKA',
                      style: TextStyle(
                        fontFamily: 'Lucida Sans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        letterSpacing: 0.3,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.pinkAccent, Colors.pink])),
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/1.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Appoinment")
                            ],
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/5.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Basic Info")
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/9.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Medical Reports")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/2.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Book Appoinments")
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/10.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Doctors")
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/11.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Lab Results")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 39,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/6.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Prescription")
                            ],
                          ),
                          SizedBox(
                            width: 29,
                          ),
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                )),
                                child: ImageIcon(
                                  AssetImage("asset/images/12.jpg"),
                                  size: 40,
                                ),
                              ),
                              Text("Downloads")
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 150,
                      ),
                    ]),
                  ),
                  new SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => QRViewExample(),
                    )),
                    child: Text(
                      'QR Reader',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ])),
      ),
    );
  }
}

class QRViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode result;
  QRViewController controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                      'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
                  : Text('Scan a code'),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
