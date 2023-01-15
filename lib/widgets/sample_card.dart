import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: Colors.yellow[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(
                  Icons.album_outlined,
                ),
                title: Text(
                  'Mengheningkan Cipta',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle: Text(
                  'Lagu - Lagu Nasional',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Divider(height: 5, thickness: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Rent',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Buy',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
