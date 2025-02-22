import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= 1000) {
          // Desktop mode
          return const DesktopInsureLandingPage();
        } else {
          // Mobile mode
          return const MobileInsureLandingPage();
        }
      },
    );
  }
}