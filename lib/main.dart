import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPait = WordPair.random();
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido a Flutter'),
        ),
        body: Center(
          //child: Text('Hola andres'),
          child: Text(wordPait.asCamelCase),
        ),
      )
    );
  }
}

