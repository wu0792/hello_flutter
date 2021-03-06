import 'package:flutter/material.dart';
import 'package:hello_flutter/top/search.dart';
import 'package:hello_flutter/demo/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SafeArea(
          child: TopSearch(),
        ));
  }
}
