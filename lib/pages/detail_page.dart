import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String textData = '';

  DetailPage({super.key, required String textData});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // buat selectDate dengan tipe DateTime dan setnya late, karena belum tahu isiannya atau diisi nanti
  late DateTime selectDate;

  // buat selectTime dengan tipe TimeOfDay dan setnya late, karena belum tahu isiannya atau diisi nanti

  late TimeOfDay selectTime;

  // buat widget function _seletedDate
  void _selectedDate(BuildContext context) async {
    // membuat widget picker dari widget showDatePicker
    // isiannya: context, initialDate, firstDate, lastDate
    final DateTime? picker = await showDatePicker(
      context: context,
      initialDate: selectDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2045),
    );

    // cek dulu date nya ada atau tidak dan sama ga dengan yang dipilih
    if (picker != null && picker != selectDate) {
      setState(() {
        selectDate = picker;
      });
    }
  }

  // buat widget function _seletedTime
  void _selectedTime(BuildContext context) async {
    // membuat widget picker dari widget showTimePicker
    // isiannya: context dan initialTime
    final TimeOfDay? timePicker = await showTimePicker(
      context: context,
      initialTime: selectTime,
    );

    // cek dulu time nya ada atau tidak dan sama ga dengan yang dipilih
    if (timePicker != null && timePicker != selectTime) {
      setState(() {
        selectTime = timePicker;
      });
    }
  }

  @override
  void initState() {
    selectDate = DateTime.now();
    selectTime = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page & Date Time Picked'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _selectedDate(context);
              },
              child: const Text('Select Date'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.textData = selectDate.toIso8601String(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _selectedTime(context);
              },
              child: const Text('Select Time'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.textData = selectTime.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('click 1x');
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.green,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'click me 1x',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      print('click 2x');
                    });
                  },
                  splashColor: Colors.yellow,
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'clcik me 2x',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
