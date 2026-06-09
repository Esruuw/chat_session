import 'dart:async';
import 'package:flutter/material.dart';
import 'package:main/categoriesPage/CategoriesView%20.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF215A9A),
      body: Column(
        children: [
          const SizedBox(height: 80),

          Center(
            child: Container(
              width: 80,
              height: 5,
              color: Colors.white,
            ),
          ),

          const Spacer(),

          const Text(
            '_Chat Session',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Container(
              width: 220,
              height: 5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}