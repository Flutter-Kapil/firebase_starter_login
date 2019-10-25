import 'package:firebase_login_starter/signin_page.dart';
import 'package:firebase_login_starter/signup_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: FractionallySizedBox(
                    widthFactor: 0.5, child: Image.asset('assets/logo.png')),
              ),
              Text(
                'McLaren Chat',
                style: TextStyle(color: Colors.blue, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                margin: EdgeInsets.all(6),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.blue,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(6),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.purple,
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
