import 'package:flutter/material.dart';
import 'package:game_pong/bola.dart';
import 'package:game_pong/pemukul.dart';

class Pong extends StatefulWidget {
  const Pong({Key? key}) : super(key: key);

  @override
  State<Pong> createState() => _PongState();
}

class _PongState extends State<Pong> with SingleTickerProviderStateMixin {
  double lebarScreen = 200;
  double tinggiScreen = 500;
  double diameter = 50;
  double panjangPemukul = 100;
  double lebarPemukul = 25;
  late double posX;
  late double posY;
  late Animation<double> animasi;
  late AnimationController kontrolAnimasi;

  @override
  void initState(){
    posX = 0;
    posY = 0;
    kontrolAnimasi = AnimationController(vsync: this, duration: const Duration(seconds: 5),);
    animasi = Tween<double>(begin: 0, end: 300).animate(kontrolAnimasi);
    animasi.addListener(() {
      setState(() {
        posX++;
        posY++;
      });
    });
    kontrolAnimasi.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      lebarScreen = constraint.maxWidth;
      tinggiScreen = constraint.maxHeight;
      diameter = lebarScreen / 10;
      panjangPemukul = lebarScreen / 5;
      lebarPemukul = tinggiScreen / 20;
      return Stack(
        children: [
          Positioned(
            top: posY,
            left: posY,
            child: Bola(diameter: diameter),
          ),
          Positioned(
            bottom: 0,
            child: Pemukul(
              panjang: panjangPemukul,
              lebar: lebarPemukul,
            ),
          ),
        ],
      );
    });
  }
}
