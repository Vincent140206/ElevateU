import 'package:elevateu_bcc/screens/auth/loginscreen.dart';
import 'package:elevateu_bcc/screens/auth/signupformscreen.dart';
import 'package:elevateu_bcc/screens/auth/verifikasi_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/textfield.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  String? selectedRole;
  bool isChecked = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  void toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  void selectRole(String role) {
    setState(() {
      selectedRole = role;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 62),
            Row(
              children: [
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                  icon: const ImageIcon(
                    AssetImage('assets/icons/Chevron_Left.png'),
                    size: 24,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                const Spacer(),
                const SizedBox(width: 60,)
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 28, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Start your move",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Welcome back to ElevateU',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 34),
                  const Text('Nama'),
                  Textfield(
                    controller: nameController,
                    hintText: 'Jacob Hensen',
                    obscureText: false,
                    color: const Color(0XFFEEEEEE),
                    borderColor: Colors.transparent,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 11),
                  Textfield(
                    controller: usernameController,
                    hintText: 'Email',
                    obscureText: false,
                    color: const Color(0XFFEEEEEE),
                    borderColor: Colors.transparent,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Pilih Role',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 11,),
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
                                  selectedRole != null ? selectedRole! : 'Pilih Role-mu',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                child: PopupMenuButton<String>(
                                  onSelected: selectRole,
                                  itemBuilder: (context) {
                                    return const [
                                      PopupMenuItem(
                                        value: 'Mentor',
                                        child: Text('Mentor'),
                                      ),
                                      PopupMenuItem(
                                        value: 'Student',
                                        child: Text('Student'),
                                      ),
                                    ];
                                  },
                                  icon: const Icon(Icons.arrow_drop_down),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text('Password'),
                  const SizedBox(height: 12),
                  Textfield(
                    controller: passwordController,
                    hintText: '8+ Characters, 1 Capital letter',
                    obscureText: true,
                    color: const Color(0XFFEEEEEE),
                    borderColor: Colors.transparent,
                  ),
                  const SizedBox(height: 12),
                  const Text('Ulangi Password'),
                  const SizedBox(height: 12),
                  Textfield(
                    controller: rePasswordController,
                    hintText: '8+ Characters, 1 Capital letter',
                    obscureText: true,
                    color: const Color(0XFFEEEEEE),
                    borderColor: Colors.transparent,
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
                          'By creating this account, you agree to \nour Terms of Service',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: isChecked
                        ? () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const VerifikasiOtp()),
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
                      'Lanjutkan',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Sudah punya akun?'),
                      TextButton(onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => LoginScreen()));
                      }, child: Text('Sign In')
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}