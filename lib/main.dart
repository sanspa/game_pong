import 'package:flutter/material.dart';
import 'package:game_pong/pong.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Game Pong'),),
        body: SafeArea(
          child: Pong(),
        ),
      ),
    );
  }
}
