import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(TurismoApp());
}

class TurismoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turismo Valledupar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
    );
  }
}