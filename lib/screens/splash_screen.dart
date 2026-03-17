import 'dart:async';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {

      if (mounted) {
        Navigator.pushReplacementNamed(context, '/welcome');
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [

            Icon(Icons.access_time,
                size: 90,
                color: AppColors.primary),

            SizedBox(height: 20),

            Text(
              "AI Productivity Coach",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.darkText,
              ),
            ),

            SizedBox(height: 20),

            CircularProgressIndicator(),

            SizedBox(height: 10),

            Text("Initializing your day...")

          ],
        ),
      ),
    );
  }
}