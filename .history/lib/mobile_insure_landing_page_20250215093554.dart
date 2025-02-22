import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';

class MobileInsureLandingPage extends StatelessWidget {
  const MobileInsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGray,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white70,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(),
            child: Text(
              "INSURE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 35,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: AppColors.darkGrayishViolet,
        width: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}

/* 
Text(
            "INSURE",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 35,
              color: AppColors.darkViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
*/
