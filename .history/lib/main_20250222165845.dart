import 'package:flutter/material.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/desktop_insure_landing_page.dart';
import 'package:insure_landing_page/mobile_insure_landing_page.dart';

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
      home: responsiveLayout(),
    );
  }

  FutureBuilder<void> responsiveLayout() {
    return FutureBuilder(
      future: _loadingState(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.veryDarkViolet,
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.darkViolet),
            ),
          );
        } else {
          return const MobileInsureLandingPage();
        }
      },
    );
  }
}
