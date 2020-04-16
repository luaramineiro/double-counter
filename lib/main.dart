import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterA = 0;
  int _counterB = 0;

  void _changeCounterA(bool isAdd) {
    setState(() {
      if (isAdd)
        _counterA++;
      else if (_counterA > 0) _counterA--;
    });
  }

  void _changeCounterB(bool isAdd) {
    setState(() {
      if (isAdd)
        _counterB++;
      else if (_counterB > 0) _counterB--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador A: $_counterA',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              'Contador B: $_counterB',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.orange,
              onPressed: () => _changeCounterA(false),
              tooltip: 'Remover A',
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 8),
            FloatingActionButton(
              backgroundColor: Colors.orange,
              onPressed: () => _changeCounterA(true),
              tooltip: 'Adicionar A',
              child: Icon(Icons.add),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () => _changeCounterB(false),
              tooltip: 'Remover A',
              child: Icon(Icons.remove),
            ),
            SizedBox(width: 8),
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () => _changeCounterB(true),
              tooltip: 'Adicionar A',
              child: Icon(Icons.add),
            ),
          ],
        )
      ]),
    );
  }
}
