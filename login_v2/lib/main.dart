import 'package:flutter/material.dart';
import 'package:login_v2/sites/login/login_service.dart';
import 'package:login_v2/sites/login/login_site.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginSite(loginService: LoginService(),),
    );
  }
}
