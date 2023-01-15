import 'package:flutter/material.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Container"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green,
            border: Border.all(
                width: 3, style: BorderStyle.solid, color: Colors.red)),
        child: Text(
          "Learn making a container and text widget",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.blueGrey[600],
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
