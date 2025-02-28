import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Elevatedbutton1 extends StatelessWidget {
  final String tulisan;
  final VoidCallback onPressed;

  const Elevatedbutton1({
    super.key,
    required this.tulisan,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          tulisan,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}