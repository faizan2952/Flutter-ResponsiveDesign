import 'package:flutter/material.dart';

class MyTiles extends StatelessWidget {
  const MyTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green,
        height: 80,
      ),
    );
  }
}
