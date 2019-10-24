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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FractionallySizedBox(
                widthFactor: 0.5, child: Image.asset('assets/logo.png')),
            Text(
              'McLaren Chat',
              style: TextStyle(color: Colors.blue, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.blue,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: FlatButton(
                color: Colors.purple,
                onPressed: () {
                  Navigator.push((context),
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
