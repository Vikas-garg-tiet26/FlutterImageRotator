import 'package:flutter/material.dart';
import 'package:p1/pic_rotator.dart';
// import 'package:p1/text.dart';

var startAlign = Alignment.bottomCenter;
var endAlign = TileMode.mirror;

class Homeview extends StatelessWidget {
  const Homeview(this.color1, this.color2, this.color3, this.color4,
      this.color5, this.color6,
      {super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final Color color6;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
            colors: [color1, color2, color3, color4, color5, color6],
            center: startAlign,
            tileMode: endAlign),
      ),
      child: const Center(
        child: Rotate(),
        // Textwid('Vikas Garg')
      ),
    );
    // );
  }
}
