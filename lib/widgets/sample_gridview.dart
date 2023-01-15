import 'package:flutter/material.dart';

class SampleGridView extends StatelessWidget {
  SampleGridView({super.key});

  final List _colorCodes = [100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample GridView'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
          ),
          itemBuilder: ((context, index) {
            return Container(
              color: Colors.blue[_colorCodes[index]],
            );
          }),
          itemCount: _colorCodes.length,
        ),
        // GridView.count(
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 5,
        //   crossAxisCount: 2,
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
