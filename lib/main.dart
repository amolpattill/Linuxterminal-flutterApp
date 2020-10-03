import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linuxterminal/screens/home.dart';
import 'package:linuxterminal/screens/login.dart';
import 'package:linuxterminal/screens/reg.dart';
import 'package:linuxterminal/screens/terminal.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: Container(
        width: double.infinity,
        height: double.infinity,
        child: AnimatedSplashScreen(
            backgroundColor: Colors.black,
            duration: 20,
            splash: Image.asset('assets/images/app.jpg', fit: BoxFit.fill),
            splashIconSize: double.infinity,
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.leftToRight,
            nextScreen: Home()),
      ),
      routes: {
        "home": (context) => Home(),
        "reg": (context) => Reg(),
        "login": (context) => Login(),
        "terminal": (context) => Terminal(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
