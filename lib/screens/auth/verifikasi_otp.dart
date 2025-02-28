import 'package:elevateu_bcc/widgets/elevatedbutton1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/popup.dart';
import 'loginscreen.dart';

class VerifikasiOtp extends StatefulWidget {
  const VerifikasiOtp({super.key});

  @override
  State<VerifikasiOtp> createState() => _VerifikasiOtpState();
}

class _VerifikasiOtpState extends State<VerifikasiOtp> {
  final List<TextEditingController> controllers = List.generate(6, (index) => TextEditingController());
  final FocusNode focusNode = FocusNode();

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
                    Navigator.of(context).pop();
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
                const SizedBox(width: 60),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 28, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Verifikasi Kode OTP",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'silakan masukkan kode yang dikirim ke nomor',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    'rafaelnathan@domain.com',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(6, (index) {
                      return Container(
                        width: 40,
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextField(
                          controller: controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: const TextStyle(
                            color: Color(0xFF141414),
                            fontSize: 30,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.27,
                          ),
                          decoration: const InputDecoration(
                            counterText: '',
                              border: InputBorder.none,
                            hintText: '*'
                          ),
                          onChanged: (value) {
                            if (value.length == 1 && index < 5) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ada masalah ?',
                        style: TextStyle(
                          color: Color(0xFF5B5B5B),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      const SizedBox(width: 9,),
                      TextButton(
                        onPressed: () {

                        },
                        child: const Text(
                          'Kirim ulang kode',
                          style: TextStyle(
                            color: Color(0xFF193C68),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Center(
                    child: Container(
                      width: 253,
                      height: 253,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/OTP.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 182,),
                  Elevatedbutton1(
                      tulisan: 'Kirim Verifikasi',
                      onPressed: () {
                        PopUp.show(
                          context,
                          imagePath: 'assets/images/AkunCreated.png',
                          deskripsi: 'Anda berhasil\nmembuat Akun',
                        ).then((_) {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                        });
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}