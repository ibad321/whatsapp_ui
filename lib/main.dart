import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';

void main() {
  Future.delayed(const Duration(seconds: 40));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
       primarySwatch: Colors.teal,
       ),
      home: const HomeScreen(),
    );
  }
}

