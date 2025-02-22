import 'package:flutter/material.dart';
import 'package:insure_landing_page/colors.dart';

class CircularProgessIndicator extends StatelessWidget {
  const circu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.veryDarkViolet,
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkViolet),
      ),
    );
  }
}