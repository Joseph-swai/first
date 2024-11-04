import 'package:flutter/material.dart';
class ForggotenPage extends StatelessWidget {
  const ForggotenPage({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: Text('RESET PASSWORD',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    )
  );
  }
}