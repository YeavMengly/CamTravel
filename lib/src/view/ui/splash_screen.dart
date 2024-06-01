import 'package:cam_travel/src/main_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isPressed = false;

  void _onTap() {
    setState(() {
      _isPressed = true;
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(
            loginStream: Stream.empty(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('./assets/image/start_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Let`s start the journey',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'enjoy the beautiful movement of life',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: _onTap,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(16),
                    height: _isPressed ? 50 : 60,
                    width: _isPressed
                        ? MediaQuery.of(context).size.width * 0.9
                        : MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(91, 123, 182, 1),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
