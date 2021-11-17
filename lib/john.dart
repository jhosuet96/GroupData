import 'package:flutter/material.dart';

class John extends StatefulWidget {
  @override
  State<John> createState() => _John();
}

class _John extends State<John> {
  @override
  Widget build(BuildContext context) {
    Widget titleJohn = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text('John García',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                      textAlign: TextAlign.center),
                ),
                const Text('Matrícula: '
                    '2018-30-3-0001'),
                const Text('Ciudad de nacimiento: '
                    'New York'),
                const Text('Hobbies: '
                    'programar, escuchar música, jugar basketball')
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Jhon Garcia'),
      ),
      body: Column(
        children: [
          Image.asset(
            'imagen/john.jpg',
            width: 400,
            height: 240,
            fit: BoxFit.scaleDown,
          ),
          titleJohn
        ],
      ),
    );
  }
}
