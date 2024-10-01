import 'package:flutter/material.dart';
// import 'package:login_v2/sites/login/login.service.dart';
// import 'package:login_v2/sites/login/login.site.dart';
import 'package:login_v2/sites/sign_up/sign_up.service.dart';
import 'package:login_v2/sites/sign_up/sign_up.site.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        body: SignUpSite(
          signupService: SignUpService(),
        ),
      )
    );
  }
}
