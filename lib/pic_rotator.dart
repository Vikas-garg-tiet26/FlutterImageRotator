import 'package:flutter/material.dart';

// import 'dart:math';
// final randomiser = Random();
class Rotate extends StatefulWidget {
  const Rotate({super.key});

  @override
  State<Rotate> createState() => _RotateState();
}

class _RotateState extends State<Rotate> {
  var rotate = 0;
  rotateimg() {
    setState(() {
      if (rotate <= 2) {
        rotate = rotate + 1;
      } else {
        rotate = 0;
      }
    });
  }

  rotateimg1() {
    setState(() {
      if (rotate <= 1) {
        rotate = rotate + 2;
      } else {
        rotate = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ---------------------------------------------------------------/
        Image.asset(
          'assets/pics/acm-$rotate.png',
          width: 250,
        ),
        // ---------------------------------------------------------------/
        const SizedBox(height: 50),
        // ---------------------------------------------------------------/
        TextButton(
            onPressed: rotateimg,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: const Color.fromARGB(255, 246, 228, 162),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                foregroundColor: Colors.pink,
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            child: const Text('Rotate_90')),
        // ---------------------------------------------------------------/
        const SizedBox(height: 10),
        // ---------------------------------------------------------------/
        TextButton(
            onPressed: rotateimg1,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                backgroundColor: const Color.fromARGB(255, 200, 200, 200),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                foregroundColor: Colors.pink,
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            child: const Text('Rotate_180'))
        // ---------------------------------------------------------------/
      ],
    );
  }
}
