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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/logo.png')),
                Text('Register')
              ],
            ),
            TextField(
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
            TextField(
              decoration: new InputDecoration(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                color: Colors.purple,
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
    );
  }
}
