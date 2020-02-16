import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return Text(wordPair.asCamelCase);
  }

}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text('Hello World'),
          child: RandomWords(),
        ),
      ),
    );
  }
}