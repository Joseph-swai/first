import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField ({super.key,
  required this.controller, 
  required this.hintText,
  required this.obscureText});

  //building of the textfield UI

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        //when border unselected 
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(121, 231, 231, 236)),
           borderRadius: BorderRadius.circular(12),

          
        ),
        //border when selected

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: Color.fromARGB(255, 158, 154, 154)),
          borderRadius: BorderRadius.circular(12),

        ),
         fillColor: Color.fromARGB(255, 223, 221, 221),
         filled: true,
         hintText: hintText,
         hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
         ),
      


    );
  }
}