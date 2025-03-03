import 'package:flutter/material.dart';

class contador extends StatefulWidget {
  const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int clickContador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clicks'),
            Text(
              '$clickContador',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                clickContador = 0;
                setState(() {});
              },
              child: Icon(Icons.refresh),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                clickContador++;
                setState(() {});
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                if (clickContador > 0) {
                  clickContador--;
                }
                setState(() {});
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
