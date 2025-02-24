import 'package:elevateu_bcc/screens/auth/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:elevateu_bcc/assets/font/text_styles.dart';
import 'package:elevateu_bcc/assets/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
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
                  const SizedBox(width: 125,),
                  const Text('Sign in',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                      )
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 28, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Let's Start your move",
                            style: TextStyle(
                                fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        const Text('Welcome back to ElevateU',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 34,),
                        const Text('Username',
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                        TextField(
                          controller: usernameController,
                          obscureText: false,
                          decoration: InputDecoration(

                            )
                          ),

                      ],
                    ),
                  )
                ],
              )
            ]
        )
    );
  }
}