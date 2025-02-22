import 'package:flutter/material.dart';
import 'package:insure_landing_page/circular_progess_indicator.dart';
import 'package:insure_landing_page/responsive_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _loadingState() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insure Landing Page',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: _loadingState(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else {
            return const ResponsiveLayout();
          }
        },
      ),
    );
  }
}


