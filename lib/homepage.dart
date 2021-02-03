import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = 'codepur';
    return Scaffold(
      appBar: AppBar(title: Text('30 Days Flutter'),),
      body: Center(
        child: Text('Welcome to $days days of flutter by $name')),
    );
  }
}
