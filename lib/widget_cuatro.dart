import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página cuatro'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ← Regresa a la pantalla anterior
          },
        ),
        backgroundColor: Color(0xffa0ffff),
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Valor = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                height: 250,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        scrollController: FixedExtentScrollController(
                          initialItem: _selectedValue,
                        ),
                        children: const [
                          Text('0'),
                          Text('1'),
                          Text('2'),
                        ],
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                    ),
                    CupertinoButton(
                      child: const Text('Cerrar'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
