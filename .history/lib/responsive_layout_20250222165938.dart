import 'package:flutter/material.dart';

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
