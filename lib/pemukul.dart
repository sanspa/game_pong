import 'package:flutter/material.dart';

class Pemukul extends StatelessWidget {
  final double panjang;
  final double lebar;
  const Pemukul({Key? key, required this.panjang, required this.lebar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: panjang,
      height: lebar,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}
