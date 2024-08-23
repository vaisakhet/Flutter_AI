import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_ai/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        'assets/images/Gemini-scaled.jpg',
        fit: BoxFit.cover,
      ),
    )
        // Center(
        //   child:
        //    Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Image.asset(
        //         'assets/images/Gemini-scaled.jpg',
        //         fit: BoxFit.cover,
        //       ), // Your splash screen image
        //       //CircularProgressIndicator(),
        //     ],
        //   ),
        // ),
        );
  }
}
