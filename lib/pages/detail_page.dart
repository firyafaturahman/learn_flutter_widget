import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String textData = '';

  const DetailPage({super.key, required String textData});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back to home'),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.textData,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      )),
    );
  }
}
