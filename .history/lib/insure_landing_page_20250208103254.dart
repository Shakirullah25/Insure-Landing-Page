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
        elevation: 20,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            "Insure",
            style: GoogleFonts.dmSerifDisplay(
                fontSize: 40, color: AppColors.veryDarkViolet),
          ),
        ),
      ),
    );
  }
}
