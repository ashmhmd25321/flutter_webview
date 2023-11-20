// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Demo',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
          seconds: 5,
          navigateAfterSeconds: const MyHomePage(title: 'Demo Web App'),
          title: const Text(
            'Sample Splash Screen',
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.0,
                color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue[200],
          image: Image.asset('assets/daraz-seeklogo.com.png'),
          photoSize: 100.0,
        ));
  }
}
