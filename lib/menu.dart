import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 1; i <= 6; i++) ...[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/pantalla$i');
                    },
                    child: Text('Ir a Pantalla $i'),
                  ),
                  const SizedBox(height: 30),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
