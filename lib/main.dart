import 'package:flutter/material.dart';
import 'package:rive_sample_app/cat_eye.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatApp(),
    );
  }
}
