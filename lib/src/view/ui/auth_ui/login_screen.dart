import 'dart:async';
import 'package:cam_travel/src/controller/auth/auth_controller.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Text Controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final StreamController<bool> _loginStateController = StreamController<bool>();

  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _loginStateController.close();
    super.dispose();
  }

  void login() {
    // Implement your login logic here
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('./assets/image/intro_travel.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
                        image: AssetImage('./assets/image/CAM TRAVEL.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 220),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        AuthController(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Welcome Back',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Login to Continue',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16, bottom: 8),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(235, 246, 246, 247),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    color: Color.fromARGB(255, 158, 214, 240))
                              ],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(16)),
                                prefixIcon: const Icon(Icons.email),
                                labelText: 'Email',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 16, right: 16, bottom: 8),
                          child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(235, 246, 246, 247),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    color: Color.fromARGB(255, 158, 214, 240))
                              ],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: TextField(
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: const BorderSide(
                                      style: BorderStyle.solid,
                                      color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(16)),
                                prefixIcon: const Icon(Icons.lock),
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  onPressed: _togglePasswordVisibility,
                                  icon: Icon(_isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: GestureDetector(
                            onTap: login,
                            child: Container(
                              alignment: Alignment.center,
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: const Color.fromRGBO(91, 123, 182, 100),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(178, 199, 238, 0.612),
                                      offset: Offset(0, 3))
                                ],
                              ),
                              child: const Text(
                                'Log In',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 100,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Or Sign in with',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 1,
                                width: 100,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: GestureDetector(
                                  child: Container(
                                    height: 48,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: const Color.fromRGBO(244, 246, 252, 75),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(255, 225, 228, 231),
                                            offset: Offset(0, 2))
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 32,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      './assets/image/google.png'))),
                                        ),
                                        const Text(
                                          'Google',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: GestureDetector(
                                  child: Container(
                                    height: 48,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: const Color.fromRGBO(244, 246, 252, 75),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(255, 225, 228, 231),
                                            offset: Offset(0, 2))
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 32,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      './assets/image/facebook.png'))),
                                        ),
                                        const Text(
                                          'Facebook',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            height: 116,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('./assets/image/angkor_wat.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
