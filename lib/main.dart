import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/LandingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThuisGemaakt',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 87, 87, 87),
          primarySwatch: Colors.grey),
      home: const LandingPage(),
    );
  }
}
