import 'package:elevateu_bcc/screens/auth/onboardingscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              const SizedBox(height: 62),
              Row(
                children: [
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Onboarding()));
                      },
                    icon: const ImageIcon(
                      AssetImage('assets/icons/Chevron_Left.png'),
                      size: 24,
                    ),
                  ),
                  const Text('Sign in', style: TextStyles.heading1Bold,
                      )
                ],
              )
            ]
        )
    );
  }
}
