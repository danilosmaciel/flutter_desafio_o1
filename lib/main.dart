import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transição de modos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Desafio-01 - Alterando cor e texto pelo botão "+"'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final List<String> _modes = ["DarkMode","LightMode"];
  
  void changeMode() {
    setState(() {
      _index += _index > 0 ? -1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _index > 0 ? Colors.white : Colors.black,
      appBar: AppBar(title: Text(widget.title) ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Modo: ${_modes[_index]}', style: TextStyle(color: _index > 0 ? Colors.black : Colors.white,),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeMode,
        tooltip: 'Mudar modo e exibição para dark ou light mode',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
