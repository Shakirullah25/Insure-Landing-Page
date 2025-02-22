import 'package:flutter/material.dart';
import 'package:insure_landing_page/insure_landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insure Landing Page',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: InsureLandingPage(),
    );
  }
}
