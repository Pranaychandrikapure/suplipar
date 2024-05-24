import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import 'package:suplipar/auth/sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Start the timer in the build method to ensure it runs after the widget is rendered
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()), // Replace HomeScreen with your target screen
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 47, 47),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/splash_screen.svg'),
              const SizedBox(height: 5),
              const Text(
                "Suplipar",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// Dummy HomeScreen widget for demonstration purposes
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
