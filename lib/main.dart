import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'package:login_ui/forgot_password_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ForgotPasswordPage.tag: (context) => ForgotPasswordPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login-UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
