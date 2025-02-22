import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class InsureLandingPage extends StatelessWidget {
  const InsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGray,
      appBar: AppBar(
        backgroundColor: AppColors.veryLightGray,
        elevation: 0,
        actions: [
          const SizedBox(width: 16),
          Text("Insure", style: GoogleFonts.dmSerifDisplay(fontSize: 30, color: AppColors.veryDarkViolet)),
        ]
      ),
    );
  }
}
