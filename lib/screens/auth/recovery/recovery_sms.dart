import 'package:elevateu_bcc/screens/auth/recovery/recovery.dart';
import 'package:elevateu_bcc/widgets/button1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoverySms extends StatefulWidget {
  const RecoverySms({super.key});

  @override
  State<RecoverySms> createState() => _RecoverySms();
}

class _RecoverySms extends State<RecoverySms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 62),
          Row(
            children: [
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const ImageIcon(
                  AssetImage('assets/icons/Chevron_Left.png'),
                  size: 24,
                ),
              ),
              const SizedBox(width: 125),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          const SizedBox(height: 29),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verifikasi Nomor",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Masukkan no telepon untuk verifikasi',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 29),
                Text('Nomor Telepon'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}