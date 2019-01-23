import 'package:flutter/material.dart';
import 'package:hello_flutter/top/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TopSearch(),
    );
  }
}
