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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
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
                        'Login',
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: emailIdController,
                      keyboardType: TextInputType.emailAddress,
//                  autocorrect: false,
//                  autofocus: true,
//                  showCursor: false,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      controller: passwordController,
//                  obscureText: true,
//                  autocorrect: true,
//                  autofocus: true,
//                  showCursor: false,
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
                      child: Text('Log in',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
