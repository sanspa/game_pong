import 'package:flutter/material.dart';

class Pong extends StatefulWidget {
  const Pong({Key? key}) : super(key: key);

  @override
  State<Pong> createState() => _PongState();
}

class _PongState extends State<Pong> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: [
          Text('Ini komponen pertama'),
        ],
      );
    });
  }
}
