import 'package:flutter/material.dart';

class Josue extends StatefulWidget {
  @override
  State<Josue> createState() => _JosueState();
}

class _JosueState extends State<Josue> {
  @override
  Widget build(BuildContext context) {

    Widget titleJosue = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text('Josue Medina',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                      textAlign: TextAlign.center),
                ),
                const Text('Matrícula: '
                    '2018-30-3-0005'),
                const Text('Ciudad de nacimiento: '
                    'RD, Bani'),
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
        title: const Text('Josue Medina'),
      ),
      body: Column(
        children: [
          Image.asset(
            'imagen/josue.jpg',
            width: 400,
            height: 240,
            fit: BoxFit.scaleDown,
          ),
          titleJosue
        ],
      ),
    );
  }
}
