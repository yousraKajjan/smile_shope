import 'package:flutter/material.dart';
import 'package:smile_shope/screens/splash/splash_body.dart';

class SplashSreen extends StatelessWidget {
  const SplashSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 134, 201, 234),
      body: SplashBody(),
    );
  }
}
