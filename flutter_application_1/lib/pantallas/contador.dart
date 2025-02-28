import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clicks'),
            Text(
              '0',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
