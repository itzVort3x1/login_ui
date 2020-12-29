import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  static String tag = "forgot-password";

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final hacker = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 55.0,
          child: Image.asset('assets/hacker.png'),
        ),
    );

    final new_password = TextFormField(
      autofocus: false,
      initialValue: 'new password',
      style: TextStyle(
        color: Colors.white,
      ),
      //obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(
            color: Colors.lightBlueAccent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.0,
          )
        )
      ),
    );

    final confirm_password = TextFormField(
      autofocus: false,
      initialValue: 'confirm password',
      style: TextStyle(
        color: Colors.white,
      ),
      //obscureText: true,
      decoration: InputDecoration(
          hintText: 'password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Colors.lightBlueAccent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.0,
              )
          )
      ),
    );

    final change_password_button = Padding(
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
        child: Text('Change password', style: TextStyle(color: Colors.black87, fontSize: 16.0)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: [
            hacker,
            SizedBox(height: 48.0),
            new_password,
            SizedBox(height: 8.0),
            confirm_password,
            SizedBox(height: 24.0),
            change_password_button,
          ],
        ),
      ),
    );
  }
}
