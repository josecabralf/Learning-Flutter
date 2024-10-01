import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;
  
  final String hintText;

  const PasswordInput({
    super.key,
    required this.controller,
    this.hintText = 'Password',
  }) : super();

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    // You can now access widget.controller in your state
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      // Password field with toggle visibility
      child: TextField(
        controller: widget.controller, // Using the controller from widget
        obscureText: _isObscure,

        decoration: InputDecoration(
          fillColor: Colors.deepPurple[100],
          filled: true,

          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 121, 121, 121),
            fontWeight: FontWeight.w400,
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple[100]!,
            ),
          ),

          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple,
            ),
          ),
          
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            color: const Color.fromARGB(255, 121, 121, 121),
            onPressed: () {
              // Toggle visibility
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
