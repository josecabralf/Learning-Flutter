import 'package:flutter/material.dart';

class TextInput extends StatelessWidget{
  final String hintText;
  final TextEditingController controller;

  const TextInput({
    super.key,
    required this.controller,
    required this.hintText,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,),
      child: TextField(
        controller: controller,

        decoration: InputDecoration(
          fillColor: Colors.deepPurple[100],
          filled: true,
          
          hintText: hintText,
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
        ),
      ),
    );
  }
}