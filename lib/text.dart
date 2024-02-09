import 'package:flutter/material.dart';

class Textwid extends StatelessWidget {
  const Textwid(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      //-------Text Styling------------//
      // 'Team ACM',
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 50,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        // backgroundColor: Colors.amberAccent,
        // decorationColor: Color.fromARGB(255, 239, 0, 0)
        height: double.minPositive,
        wordSpacing: 20,
      ),
    ); //-------Text Styling------------//
  }
}
