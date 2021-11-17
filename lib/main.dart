import 'package:flutter/material.dart';
import 'package:varias_interaz/john.dart';
import 'package:varias_interaz/cristian.dart';
import 'package:varias_interaz/josue.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Sobre Nosotros',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Somos el Grupo #2, este está integrado por tres personas: Josue Medida, Jhon Garcia y Cristian Herrera.',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Builder(
          builder: (BuildContext context) {
            return _buildButtonColumn(Icons.account_circle, 'Josue Medina',
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Josue()),
              );
            });
          },
        ),
        Builder(
          builder: (BuildContext context) {
            return _buildButtonColumn(Icons.account_circle, 'John Garcia',
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => John()),
              );
            });
          },
        ),
        Builder(
          builder: (BuildContext context) {
            return _buildButtonColumn(Icons.account_circle, 'Cristian Herrera',
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cristian()),
              );
            });
          },
        ),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(30),
      child: Text(
        'Nota: Click en los iconos para mas detalles',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.lightBlue
        ),
      ),
    );

    return MaterialApp(
      title: 'Grupo 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PM1 Grupo II'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'imagen/lake.jpg',
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label,
      {required GestureTapCallback onTap}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Icon(icon),
          onTap: onTap,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
