import 'package:base/pages/Index/index.dart';
import 'package:base/route/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Be Defined',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
    );
  }
}
