import 'package:flutter/material.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/mobile_insure_landing_page.dart';

FutureBuilder<void> responsiveLayout() {

Future<void> _loadingState() async {
    await Future.delayed(const Duration(seconds: 2));
  }

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

