import 'package:cam_travel/src/controller/auth/auth_controller.dart';
import 'package:cam_travel/src/view/bottom-bar/bottom_navigation.dart';
import 'package:cam_travel/src/view/ui/auth_ui/login_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

   final Stream<bool> loginStream;


  const MainPage({super.key, required this.loginStream});

  @override
  Widget build(BuildContext context) {

     return StreamBuilder<bool>(
      stream: loginStream,
      initialData: false,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          // User is logged in, navigate to HomePage
          return BottomNavigation();
        } else {
          // User is not logged in, show LoginPage
          return LoginScreen();
        }
      },
    );
  }
}