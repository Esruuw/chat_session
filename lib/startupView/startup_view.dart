import 'package:flutter/material.dart';

class startupview extends StatelessWidget {
  const startupview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF215A9A),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 60),

            // Top Line
            Center(
              child: Container(
                width: 80,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const Spacer(),

            // Title
            const Text(
              '_Chat Session',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w500,
                fontFamily: 'Times New Roman',
              ),
            ),

            const Spacer(),

            // Bottom Line
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                width: 220,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}