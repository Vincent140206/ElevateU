import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Elevatedbutton2 extends StatefulWidget {
  final String tulisan;
  final Widget tujuan;

  const Elevatedbutton2({
    super.key,
    required this.tulisan,
    required this.tujuan
  });

  @override
  State<Elevatedbutton2> createState() => _ElevatedbuttonState();
}

class _ElevatedbuttonState extends State<Elevatedbutton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 356,
              height: 40,
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => widget.tujuan));
                },
                child: Text(
                  widget.tulisan,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
    );
  }
}
