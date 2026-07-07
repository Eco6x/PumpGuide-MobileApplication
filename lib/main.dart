//ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pumpguide/screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(const FitnessApp());

class FitnessApp extends StatefulWidget {
  const FitnessApp({super.key});

  @override
  State<FitnessApp> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          primary: Colors.grey,
          surface: Color.fromARGB(255, 207, 207, 207),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Colors.grey[800]!,
          surface: const Color.fromARGB(255, 30, 30, 30),
        ),
      ),
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
