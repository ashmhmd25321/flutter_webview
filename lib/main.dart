// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

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
        home: FlutterSplashScreen.scale(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 167, 219, 243),
              Color.fromARGB(255, 191, 231, 250),
            ],
          ),
          childWidget: SizedBox(
            height: 150,
            child: Image.asset("assets/daraz-seeklogo.com.png"),
          ),
          duration: const Duration(seconds: 5),
          animationDuration: const Duration(seconds: 4),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: const MyHomePage(title: 'Demo Web App'),
        ));
  }
}
