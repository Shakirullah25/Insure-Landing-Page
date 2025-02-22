import 'package:flutter/material.dart';
import 'package:insure_landing_page/app_bar.dart';
import 'package:insure_landing_page/colors.dart';

class InsureLandingPage extends StatelessWidget {
  const InsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGray,
      appBar: AppBarContent(),
    );
  }
}

