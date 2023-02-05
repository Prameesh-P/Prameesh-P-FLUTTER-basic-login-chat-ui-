import 'package:flutter/material.dart';
import 'package:hyyy/screen_home.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  // SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Homescreen(),
    );
  }
}
