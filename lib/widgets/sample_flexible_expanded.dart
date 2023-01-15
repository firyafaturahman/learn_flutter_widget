import 'package:flutter/material.dart';

class SampleFlexibleAndExpanded extends StatelessWidget {
  const SampleFlexibleAndExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Flexible & Expanded'),
      ),
      body: Row(
        children: [
          Expanded(flex: 6, child: _sampleBox()),
          Expanded(flex: 4, child: _sampleBox()),
          Expanded(flex: 2, child: _sampleBox()),
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


// Column(
//         children: [
//           _sampleBox(),
//           Flexible(flex: 3, fit: FlexFit.tight, child: _sampleBox()),
//           Flexible(flex: 1, fit: FlexFit.tight, child: _sampleBox()),
//         ],