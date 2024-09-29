import 'package:flutter/material.dart';

class LoginService {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void onForgotPassword() {
    print('Forgot Password');
  }

  void onLogin() {
    print('Login');
  }

  void onSignUp() {
    print('Sign Up');
  }
}
