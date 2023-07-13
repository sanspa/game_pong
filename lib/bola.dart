import 'package:flutter/material.dart';

class Bola extends StatelessWidget {
  final double diameter;
  const Bola({Key? key, required this.diameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
    );
  }
}
