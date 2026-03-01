import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [

              const SizedBox(height: 40),

              // Title small text
              const Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              // Main title
              const Text(
                "AI Productivity Coach",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              ),

              const SizedBox(height: 40),

              // Illustration Image
              Image.asset(
                "assets/images/welcome.png",
                height: 250,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 30),

              // Subtitle description
              const Text(
                "Boost your focus and productivity\nwith personalized AI coaching",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              // Get Start Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text(
                    "Get Start",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Login text
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  "Already have an account? Log in",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}