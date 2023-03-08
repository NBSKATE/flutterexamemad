import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/LandingPage.dart';
import 'package:thuis_gemaakt/components/navbar.dart';

class GerechtDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const GerechtDetailPage({
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              image,
              width: 320, // 50% of original width
              height: 300, // 50% of original height
            ),
          ),
          Text(description),
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
