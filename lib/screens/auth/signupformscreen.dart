import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => SignupFormState();
}

class SignupFormState extends State<SignupForm> {
  String? selectedRole;
  bool isChecked = false;
  final TextEditingController usernameController = TextEditingController();

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

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
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back, size: 24),
              ),
              const SizedBox(width: 125),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 28, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Data Diri",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Buat kata sandi yang kuat dan aman untuk \nmelindungi akunmu',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 34),
                    const Text(
                      'Pilih Role',
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 326,
                          height: 48,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0XFFEEEEEE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            selectedRole != null ? '$selectedRole' : 'Pilih Role-mu',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        DropdownButton<String>(
                          hint: Text('$selectedRole'),
                          value: selectedRole,
                          items: <String>['Mentor', 'Student'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedRole = newValue;
                            });
                          },
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: toggleCheckbox,
                          child: Image.asset(
                            isChecked
                                ? 'assets/icons/Ceklis.png'
                                : 'assets/icons/Tidak Ceklis.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            'I agree to the Terms and Conditions',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: isChecked
                          ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Account created!')),
                        );
                      }
                          : null,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0XFF00678D),
                        minimumSize: const Size(356, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}