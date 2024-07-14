import 'dart:async';

import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  startTimer() {
    Timer(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/login');
      }
      
    });
  }

   @override
  void initState() {
    super.initState();
    // Iniciar o cronômetro
  startTimer();
  }
   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
              Color.fromARGB(255, 80, 1, 190),
              Color.fromARGB(255, 2, 185, 167)
          ], begin: Alignment.topRight, end: Alignment.bottomLeft
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 250,
              width: MediaQuery.of(context).size.width - 100,
            ),
            
          ],
        ),
      ),

    );
  }
}