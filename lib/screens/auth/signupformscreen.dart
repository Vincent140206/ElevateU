import 'package:elevateu_bcc/widgets/button1.dart';
import 'package:elevateu_bcc/widgets/textfield.dart';
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController OTPController = TextEditingController();

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  void PopUpBerhasil (BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 400,
            width: 272,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/AkunCreated.png',
                  height: 206,
                  width: 205,
                ),
                const SizedBox(height: 9),
                const Text(
                  'Selamat!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Anda berhasil \nmembuat Akun',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff007BFF),
                  ),
                  child: const Text('Lanjut'),
                ),
              ],
            ),
          ),
        );
      },
    );
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
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0XFFEEEEEE),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    selectedRole != null ? '$selectedRole' : 'Pilih Role-mu',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 81,
                                  child: DropdownButton<String>(
                                    isExpanded: false,
                                    value: null,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text('Nama'),
                    const SizedBox(height: 12,),
                    Textfield(
                        controller: nameController,
                        hintText: 'Jacob Hensen',
                        obscureText: false,
                        color: const Color(0XFFEEEEEE),
                        borderColor: Colors.transparent
                    ),
                    const SizedBox(height: 12),
                    const Text('Password'),
                    const SizedBox(height: 12,),
                    Textfield(
                        controller: passwordController,
                        hintText: '8+ Characters, 1 Capital letter',
                        obscureText: true,
                        color: const Color(0XFFEEEEEE),
                        borderColor: Colors.transparent
                    ),
                    const SizedBox(height: 12),
                    const Text('Ulangi Password'),
                    const SizedBox(height: 12,),
                    Textfield(
                        controller: rePasswordController,
                        hintText: '8+ Characters, 1 Capital letter',
                        obscureText: true,
                        color: const Color(0XFFEEEEEE),
                        borderColor: Colors.transparent
                    ),
                    const SizedBox(height: 12),
                    const Text('Masukan Otp'),
                    const SizedBox(height: 12,),
                    Textfield(
                        controller: OTPController,
                        hintText: '6 Numbers',
                        obscureText: true,
                        color: const Color(0XFFEEEEEE),
                        borderColor: Colors.transparent
                    ),
                    const SizedBox(height: 105,),
                    Container(
                      width: 365,
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
                        onPressed: ()  => PopUpBerhasil(context),
                        child: const Text(
                          'Lanjutkan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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