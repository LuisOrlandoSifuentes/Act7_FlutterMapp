import 'package:flutter/material.dart';
import 'package:sifuentes1313/menu.dart';
import 'package:sifuentes1313/widget_uno.dart';
import 'package:sifuentes1313/widget_dos.dart';
import 'package:sifuentes1313/widget_tres.dart';
import 'package:sifuentes1313/widget_cuatro.dart';
import 'package:sifuentes1313/widget_cinco.dart';
import 'package:sifuentes1313/widget_seis.dart';

void main() => runApp(MisWidgetsRutas());

class MisWidgetsRutas extends StatelessWidget {
  const MisWidgetsRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
