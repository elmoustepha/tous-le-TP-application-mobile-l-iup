import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Simple'),
        backgroundColor: Colors.blue,  // Couleur de l'AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valeur du compteur : $_counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: _increment,
                  icon: Icon(Icons.add),
                  iconSize: 30,
                  
                  color: Colors.green,  // Couleur de l'icône "+"
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: _reset,
                  icon: Icon(Icons.refresh),
                  iconSize: 30,
                  color: Colors.red,  // Couleur de l'icône de réinitialisation
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
