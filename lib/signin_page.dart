import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

final emailIdController = TextEditingController();
final passwordController = TextEditingController();

class _SignInPageState extends State<SignInPage> {
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
                Hero(
                    tag: 'logo',
                    child: Container(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/logo.png'))),
                Text('Login')
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
                color: Colors.blue,
                child: Text('Log in',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
