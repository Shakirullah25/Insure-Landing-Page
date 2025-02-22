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
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Help",
              style: GoogleFonts.karla(
                fontSize: 20,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Log in",
              style: GoogleFonts.karla(
                fontSize: 20,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "View Plans",
              style: GoogleFonts.karla(
                fontSize: 20,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image.asset(
              "assets/illustration-intro.png",
              width: 800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              "Humanizing your insurance.",
              style: GoogleFonts.karla(
                fontSize: 50,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              "Get your life insurance coverage easier and faster. We blend our expertise and technology to help you find the plan that's right for you. Ensure you and your loved ones are protected.",
              style: GoogleFonts.karla(
                fontSize: 20,
                color: AppColors.darkGrayishViolet,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: AppColors.darkViolet,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                "View Plans",
                style: GoogleFonts.karla(
                  fontSize: 20,
                  color: AppColors.veryLightGray,
     ],
      ),
    );
  }
}
