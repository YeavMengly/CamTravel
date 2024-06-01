
import 'package:cam_travel/src/view/ui/auth_ui/login_screen.dart';
import 'package:cam_travel/src/view/ui/auth_ui/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AuthController extends StatefulWidget {
  const AuthController({super.key});

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {

    // final StreamController<bool> _loginStateController = StreamController<bool>();


  bool showLoginPage = true;
  
  void toggleScreen (){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _loginStateController.close();
  //   super.dispose();
  // }
  void _submit() {
    if (showLoginPage) {
    return toggleScreen();
    } else {
        return toggleScreen();
    }
  }
  @override
  Widget build(BuildContext context) {
   return SizedBox(
   
    width: MediaQuery.of(context).size.width,
    child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                                    },
                                    child: Padding(padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 52,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: const Color.fromRGBO(91, 123, 182, 100),
                                      ),
                                      child: const Text("Log In", style: TextStyle(
                                        fontSize: 18, color: Colors.white
                                      ),),
                                    ),
                                  ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                                    },
                                    child: Padding(padding: const EdgeInsets.symmetric(vertical: 16,),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 52,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          color: const Color.fromRGBO(91, 123, 182, 100),
                                        ),
                                        child: const Text("Sign Up", style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white
                        
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
   );
  }
}