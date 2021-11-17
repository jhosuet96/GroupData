import 'package:flutter/material.dart';

class Cristian extends StatefulWidget {
  @override
  State<Cristian> createState() => _Cristian();
}

class _Cristian extends State<Cristian> {
  @override
  Widget build(BuildContext context) {

    Widget titleCristian = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text('Cristian Herrera',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 20

                      ),
                      textAlign: TextAlign.center),
                ),
                const Text('Matrícula: '
                    '2018-30-3-0005'),
                const Text('Ciudad de nacimiento: '
                    'RD, Azua'),
                const Text('Hobbies: '
                    'programar, escuchar música')
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cristian Herrera'),
      ),
      body: Column(
        children: [
          Image.asset(
            'imagen/cristian.jpg',
            width: 500,
            height: 240,
            fit: BoxFit.scaleDown,
          ),
          titleCristian
        ],
      ),
    );
  }
}
