import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página cinco'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Color(0xffcb9aff),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffcb9aff),
              ),
              child: const Text("Elegir fecha"),
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
