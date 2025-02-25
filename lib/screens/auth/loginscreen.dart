import 'package:elevateu_bcc/screens/auth/onboardingscreen.dart';
import 'package:flutter/material.dart';

import '../homescreen.dart';

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
                        const SizedBox(height: 11,),
                        SizedBox(
                          width: 356,
                          height: 48,
                          child: TextField(
                            controller: usernameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent
                                  )
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.transparent)
                              ),
                              hintText: 'Email',
                              filled: true,
                              fillColor: const Color(0XFFEEEEEE),
                              )
                            ),
                        ),
                        const SizedBox(height: 32,),
                        const Text('Password',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                        const SizedBox(height: 11,),
                        SizedBox(
                          width: 356,
                          height: 48,
                          child: TextField(
                              controller: usernameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent
                                    )
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                hintText: 'Password',
                                filled: true,
                                fillColor: const Color(0XFFEEEEEE),
                              )
                          ),
                        ),
                        TextButton(
                            onPressed: (){},
                            child: const Text('Lupa kata sandi?',
                                style: TextStyle(
                                fontSize: 12,
                                ),
                            )
                        ),
                        const SizedBox(height: 112,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 356,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0D7CA4),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    )
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                                },
                                child: const Text(
                                  'Sign In',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 11,),
                            const Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 100,
                                    child: Divider(color: Colors.grey, thickness: 1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('or', style: TextStyle(fontSize: 16)),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: 100,
                                    child: Divider(color: Colors.grey, thickness: 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
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