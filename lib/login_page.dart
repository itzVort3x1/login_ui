import 'package:flutter/material.dart';
import 'package:login_ui/forgot_password_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 55.0,
        child: Image.asset('assets/hacker.png'),
      ),
    );

    final email = TextFormField(
      cursorColor: Colors.white,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'hacker@gmail.com',
      style: TextStyle(
        color: Colors.white
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: Colors.lightBlueAccent
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.0
          ),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'password',
      style: TextStyle(
        color: Colors.white
      ),
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: Colors.lightBlueAccent
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
              color: Colors.white,
              width: 1.0
          ),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.black87, fontSize: 16.0)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.white70),
      ),
      onPressed: () {
        Navigator.pushNamed(context, ForgotPasswordPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
