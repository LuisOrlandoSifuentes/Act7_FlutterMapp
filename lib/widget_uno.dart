import 'package:flutter/material.dart';

class PantallaUno extends StatefulWidget {
  const PantallaUno({super.key});

  @override
  State<PantallaUno> createState() => _PantallaUnoState();
}

class _PantallaUnoState extends State<PantallaUno> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página uno'),
        backgroundColor: Color(0xffffafaf),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text('change padding'),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),
            const SizedBox(height: 10),
            Text('Padding = $padValue'),
            const SizedBox(height: 10),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
