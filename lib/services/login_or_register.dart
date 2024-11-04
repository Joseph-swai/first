// import 'package: flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:project1/homeinterface/admin_page.dart';
// import 'package:project1/homeinterface/register_page.dart';
//  class LoginOrRegister extends StatefulWidget {
//   const LoginOrRegister({super.key});

//   @override
//   State<LoginOrRegister> createState() => _LoginOrRegisterState();
// }

// class _LoginOrRegisterState extends State<LoginOrRegister> {
//   // intial showing a login page 

//   bool showingLoginPage = true;

//   //toggle between two pages 
//   void togglePage (){
//     setState(() {
//       showingLoginPage = !showingLoginPage;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//    if(showingLoginPage){
//     return AdminPage(
//       onTap: (){}
//     );
//    }
//    else{
//     return RegisteringPage();
//    }
// }