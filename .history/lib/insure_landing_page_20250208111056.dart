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
        toolbarHeight: 100,
        backgroundColor: AppColors.veryLightGray,
        elevation: 20,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Text(
            "INSURE",
            style: GoogleFonts.karla(
              fontSize: 35,
              color: AppColors.veryDarkViolet,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "HOW WE WORK",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.darkGrayishViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "BLOG",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.darkGrayishViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "ACCOUNT",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.darkGrayishViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "VIEW PLANS",
              style: GoogleFonts.karla(
                fontSize: 18,
                color: AppColors.veryDarkViolet,
                fontWeight: FontWeight.bold,
                
              ),
            ),
          )
          //   Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 150),
          //   child: TextButton(
          //     "INSURE",
          //     style: GoogleFonts.karla(
          //       fontSize: 35,
          //       color: AppColors.veryDarkViolet,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),

          // ),
        ],
      ),
    );
  }
}
