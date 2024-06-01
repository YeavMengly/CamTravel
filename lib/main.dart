import 'package:cam_travel/src/view/bottom-bar/bottom_navigation.dart';
import 'package:cam_travel/src/view/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main()   {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // checkProducts();
  runApp(const CamTravel());
}

class CamTravel extends StatelessWidget {
  const CamTravel({super.key});

@override
  Widget build(BuildContext context) {
    return const MaterialApp (
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
       
    );
  }
}