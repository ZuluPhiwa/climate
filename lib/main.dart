import 'package:climate/Pages/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //This shows a "Debug Mode" banner at the top of your app
      theme: ThemeData(
        primarySwatch: Colors.red,
      ), //Theme Color of the application
      home: const Home(),
    );
  }
}

/*
* Where we run the application.This is the main file. We've imported the "Home" file as its the start of our application
* */
