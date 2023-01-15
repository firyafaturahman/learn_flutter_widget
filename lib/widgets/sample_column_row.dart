import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Column and Row"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          )
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(
      //       height: 100,
      //       color: Colors.brown,
      //     ),
      //     Container(
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 100,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
    );
  }
}
