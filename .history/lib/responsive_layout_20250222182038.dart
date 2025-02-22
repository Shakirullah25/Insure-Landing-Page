import 'package:flutter/material.dart';
import 'desktop_insure_landing_page.dart';
import 'mobile_insure_landing_page.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth <= 1000) {
          // Desktop mode
          return const mob();
        } else {
          // Mobile mode
          return const MobileInsureLandingPage();
        }
      },
    );
  }
}