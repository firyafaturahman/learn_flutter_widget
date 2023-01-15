import 'package:flutter/material.dart';

class SampleStackPositioned extends StatelessWidget {
  const SampleStackPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Stack and Positioned"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 23,
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              height: 250,
              width: 250,
              color: Colors.red,
            ),
          ),
          Positioned(
            left: 30,
            top: 0,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
