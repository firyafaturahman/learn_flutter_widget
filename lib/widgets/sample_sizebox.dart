import 'package:flutter/material.dart';

class SampleSizeBox extends StatelessWidget {
  const SampleSizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample SizeBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            child: _sampleBox(),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('Ok'),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _sampleBox() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2),
        color: Colors.black26,
      ),
    );
  }
}
