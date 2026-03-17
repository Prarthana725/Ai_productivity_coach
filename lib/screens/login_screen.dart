import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              // Back Button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: AppColors.darkText,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 40),

              // Email Label
              const Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.darkText,
                ),
              ),

              const SizedBox(height: 8),

              // Email TextField
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              // Password Label
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.darkText,
                ),
              ),

              const SizedBox(height: 8),

              // Password TextField
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 50),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}