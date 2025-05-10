import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página tres'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // ← Regresa a la pantalla anterior
          },
        ),
        backgroundColor: Color(0xffd7ffb2),
      ),
      body: const Center(
        child: CloseButton(
          color: Colors.red,
        ),
      ),
    );
  }
}
