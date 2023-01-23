import 'package:flutter/material.dart';

class SampleDialogAndBottomSheet extends StatefulWidget {
  const SampleDialogAndBottomSheet({super.key});

  @override
  State<SampleDialogAndBottomSheet> createState() =>
      _SampleDialogAndBottomSheetState();
}

class _SampleDialogAndBottomSheetState
    extends State<SampleDialogAndBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Dialog & Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Show Alert Dialog',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: _showAlertDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(15),
              ),
              child: const Text(
                'Show Alert Dialog',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: _showBottomSheet,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.all(15),
              ),
              child: const Text(
                'Show Bottom Sheet',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Caution',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red[400],
            ),
          ),
          content: const Text(
            'This is alert caution ',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Close',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const SizedBox(
            height: 200,
            child: Text(
              'This modal bottom sheet',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          );
        });
  }
}
