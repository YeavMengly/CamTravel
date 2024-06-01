// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar:AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('./assets/image/forgot_password.png'))
              ),
            ),
            Positioned(child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: Text('If your are forgotten your password, don;t worry. Enter your email address below and we’ll help you reset it.', 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, ),),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16, right: 16,bottom: 8),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                    decoration:  BoxDecoration(
                      color: const Color.fromARGB(235, 246, 246, 247),
                      boxShadow: const [
                        BoxShadow( offset: Offset(0, 2),
                        color: Color.fromARGB(255, 158, 214, 240))
                      ],
                      borderRadius: BorderRadius.circular(16)
                      
                    ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(style: BorderStyle.solid, color: Colors.white)
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      prefixIcon: const Icon(Icons.email),
                      labelText: 'Your Email',
                    ),
                  )
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0) ,child: GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 60,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color.fromRGBO(90, 123, 181, 25),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(178, 199, 238, 0.612),
                        offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: const Text('Reset Password', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}