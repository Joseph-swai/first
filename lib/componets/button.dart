import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
   final String text;
   final onTap;

 

  const MyButton({super.key,
  required this.onTap,
  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap:onTap,
        child: Container(
          padding:  EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Center(child: Text(text)),
        ),
    );
      
  
  }
}