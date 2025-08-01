import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

// ignore: camel_case_types
class prese extends StatelessWidget {
  const prese({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/lego.gif',
        splashIconSize: 2000.0,
        centered: true,
        nextScreen: const HomeScreen(),
        backgroundColor: Colors.white,
        duration: 8000,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/lego.png', width: 80.0),
            const Text(
              'Welcome to the LEGO App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 55.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
