import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orora/forgot_password.dart';
import 'package:orora/input_dec.dart';
import 'package:orora/registration.dart';

import 'homepage.dart';

class Authentication extends StatefulWidget{
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20).copyWith(top: MediaQuery.of(context).padding.top),
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image.asset("assets/logo.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextFormField(
              decoration: iDecoration(hint: "Telephone"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: TextFormField(decoration: iDecoration(hint: "Password"),obscureText: true),
          ),
          ElevatedButton(onPressed: (){
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>const Homepage()));
          }, child: const Text("Login"),),
          Align(alignment: Alignment.centerRight,child: TextButton(onPressed: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ForgotPassword()));
          }, child: const Text("Forgot Password ?")),),
          Center(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text("OR",style: Theme.of(context).textTheme.titleLarge,),
          ),),
          OutlinedButton(onPressed: (){
            Navigator.push(context, CupertinoPageRoute(builder: (context)=>const Registration()));
          }, child: const Text("Register"))
        ],
      ),
    );
  }
}