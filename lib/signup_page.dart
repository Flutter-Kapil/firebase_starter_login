import 'package:firebase_login_starter/signin_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

final emailIdController = TextEditingController();
final passwordController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Hero(
                      tag: 'logo',
                      child: Container(
                          height: 120,
                          width: 120,
                          child: Image.asset('assets/logo.png'))),
                  Text(
                    'Register',
                    style: TextStyle(fontSize: 40, color: Colors.blue),
                  ),
                  Spacer()
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextField(
                  decoration: new InputDecoration(
                    hintText: "elon@musk.com",
                    icon: Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: emailIdController,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  autofocus: true,
                  showCursor: false,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "spaceXRocks",
                    icon: Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: passwordController,
                  obscureText: true,
                  autocorrect: false,
                  autofocus: true,
                  showCursor: false,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.blue,
                  child: Text('Register',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
