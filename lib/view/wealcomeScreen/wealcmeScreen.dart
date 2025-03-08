import 'package:flutter/material.dart';
import 'package:germankhata/view/ProfileScreen/ProfileScreen.dart';
import 'package:germankhata/view/SignInScreen/SignInScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo
              Image.asset('images/German Kotha logo (1) 2.png', height: 80),
              const SizedBox(height: 10),

              // Title
              const Text(
                'German Kotha',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Illustration Image
              Image.asset(
                'images/32479139_qhqe_pvpl_220905 1.png',
                height: 250,
              ),
              const SizedBox(height: 20),

              // Get Started Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),

              // Already have an account Button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: const Text(
                  'I already have an account',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),

              const SizedBox(height: 20),

              // Terms & Conditions
              const Text(
                'By continuing, you agree to our\nTerms & Conditions',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
