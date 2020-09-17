import 'package:flutter/material.dart';

// TODO: Import the CategoryRoute widget

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      // TODO: Instead of pointing to exactly 1 Category widget, our home should now point to an instance of the CategoryRoute widget.
      home: Container(),
    );
  }
}
