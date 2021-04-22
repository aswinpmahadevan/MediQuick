import 'package:MediQuick/loginpg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hospital Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
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
            children: <Widget>[
              Text(
                'WELCOME',
                style: TextStyle(
                  fontFamily: 'Lucida Sans',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  letterSpacing: 0.3,
                ),
              ),
              SizedBox(
                height: 20,
                width: 300,
              ),
              Text(
                'MEDIQUICK HOSPITALS',
                style: TextStyle(
                  fontFamily: 'Lucida Sans',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  letterSpacing: 0.3,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
                width: 300,
              ),
              SizedBox(
                height: 50,
                child: Text(
                  'LOGIN PAGE ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    letterSpacing: 0.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                width: 300,
                child: Text("User id",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
              ),
              TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                width: 300,
                child: Text(
                  "Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true)),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
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
                        colors: [Colors.blue, Color(0xfff7892b)])),
                child: FlatButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => loginpg(),
                  )),
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                alignment: Alignment.centerRight,
                child: Text('Forgot Password ?',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
