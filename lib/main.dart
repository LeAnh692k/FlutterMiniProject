import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
import 'Pages/WelcomeScreen.dart';
import 'Pages/CreateTaskPage.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const WelcomeScreen(),
      // home: const HomePage(),
      home: const CreateTaskPage(),

      debugShowCheckedModeBanner: false,
    );
  }
}
