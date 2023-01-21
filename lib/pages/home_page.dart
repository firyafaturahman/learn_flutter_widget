import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selected = 'satu';
  bool _isOn = false;
  bool _isChecked = false;
  String _gender = 'male';
  final List<String> _dropdownList = ['satu', 'dua', 'tiga', 'empat', 'lima'];

  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home & Form'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 80,
        ),
        child: ListView(
          children: [
            Form(
              key: _globalKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Diisi dulu formnya';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                _globalKey.currentState!.validate();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Validate'),
            ),
            const SizedBox(
              height: 10,
            ),
            Switch(
              value: _isOn,
              activeColor: Colors.green[500],
              inactiveTrackColor: Colors.red,
              onChanged: (bool? value) {
                setState(() {
                  _isOn = value ?? _isOn;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'female',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value ?? _gender;
                      // if (value != null) {
                      //   _gender = value;
                      // }
                    });
                  },
                ),
                const Text('Female'),
                const SizedBox(
                  width: 10,
                ),
                Radio(
                  value: 'male',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value ?? _gender;
                      // if (value != null) {
                      //   _gender = value;
                      // }
                    });
                  },
                ),
                const Text('Male'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.green,
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? _isChecked;
                      // if (value != null) {
                      //   _isChecked = value;
                      // }
                    });
                  },
                ),
                const Text('Check'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButton(
              value: _selected,
              icon: const Icon(
                Icons.arrow_downward,
              ),
              iconSize: 20,
              style: const TextStyle(color: Colors.green),
              underline: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.orange,
                      width: 2,
                    ),
                  ),
                ),
              ),
              items: _dropdownList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selected = value ?? _selected;
                  // if (value != null) {
                  //   selected = value;
                  // }
                });
              },
            ),
            const Divider(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: const Text('Go to detail page'),
            ),
          ],
        ),
      ),
    );
  }
}
