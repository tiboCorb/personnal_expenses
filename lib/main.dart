import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() {
  Paint.enableDithering = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              center: Alignment(0.6, -0.3),
              focal: Alignment(0.3, -0.1),
              focalRadius: 1.0,
              colors: [
            Color(0xff191a1e),
            Color(0xfF3c181a),
            Color(0xfF3c181a)
          ])),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('chart'),
              elevation: 5,
            ),
          ),
          UserTransactions()
        ]),
      ),
    ));
  }
}

class GradientAppBar {}
