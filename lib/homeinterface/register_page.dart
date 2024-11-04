import 'package:flutter/material.dart';
import 'package:project1/componets/button.dart';
import 'package:project1/componets/textfield.dart';
import 'package:project1/homeinterface/admin_page.dart';

class RegisteringPage extends StatefulWidget {
  const RegisteringPage({super.key});

  @override
  State<RegisteringPage> createState() => _RegisteringPageState();
}

class _RegisteringPageState extends State<RegisteringPage> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController middlenameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'REGISTER PAGE'
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              MyTextField(
                controller: firstnameController,
                hintText: 'Enter first name',
                obscureText: false,
              ),
              const SizedBox(height: 7),
              MyTextField(
                controller: middlenameController,
                   hintText: 'Enter middle name',
                      obscureText: false,
              ),
              const SizedBox(height: 7),
              MyTextField(
                controller: lastnameController,
                   hintText: 'Enter last name',
                      obscureText: false,
              ),
              const SizedBox(height: 7),
              MyTextField(
               controller: emailController,
                  hintText: 'Enter email address',
                      obscureText: false,
              ),
              const SizedBox(height: 7),
              MyTextField(
                controller: passwordController,
                    hintText: 'Enter password',
                       obscureText: false,
              ),
              const SizedBox(height: 7),
              MyTextField(
                controller: confirmpasswordController,
                    hintText: 'Confirm password',
                      obscureText: false,
              ),
              const SizedBox(height: 9),
              MyButton(
                text: 'Register',
                onTap: () {},
              ),
              const SizedBox(height: 5,),
               GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AdminPage()));
                },
                child: Text('Your registered? Login Here',
                style: TextStyle(color: Color.fromARGB(255, 250, 140, 49), fontWeight: FontWeight.normal),
                )
                )
            ],
          ),
        ),
      ),
    );
  }
}
