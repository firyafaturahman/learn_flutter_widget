import 'package:flutter/material.dart';

class SampleListViewAndListTile extends StatelessWidget {
  SampleListViewAndListTile({super.key});

  final List _colorCodes = [100, 200, 300, 400, 500, 600, 700, 800, 900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample ListView And ListTile'),
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return Container(
            height: 80,
            color: Colors.lime[_colorCodes[index]],
          );
        }),
        itemCount: _colorCodes.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(
      //       width: 80,
      //       color: Colors.teal[500],
      //     ),
      //     Container(
      //       width: 80,
      //       color: Colors.teal[600],
      //     ),
      //     Container(
      //       width: 80,
      //       color: Colors.teal[700],
      //     ),
      //     Container(
      //       width: 80,
      //       color: Colors.teal[800],
      //     ),
      //     Container(
      //       width: 80,
      //       color: Colors.teal[900],
      //     ),
      //   ],
      // ),
    );
  }
}
