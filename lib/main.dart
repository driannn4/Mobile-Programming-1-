import 'package:flutter/material.dart';
import 'screen/form_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Latihan Flutter',
      home:FormScreen (),
    );
  }
}
