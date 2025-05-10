import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página seis'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color(0xffe985cb),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: const Color(0xffe985cb),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Título',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  onPressed: (bool isExpanded) {
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                  },
                ),
              ],
            ),
          ),
          if (_isExpanded)
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Flutter Mapp',
                style: TextStyle(fontSize: 18),
              ),
            ),
        ],
      ),
    );
  }
}
