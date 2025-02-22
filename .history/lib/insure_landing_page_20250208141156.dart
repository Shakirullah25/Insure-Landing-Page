import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/app_bar.dart';
import 'package:insure_landing_page/colors.dart';

class InsureLandingPage extends StatelessWidget {
  const InsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryLightGray,
      appBar: AppBarContent(
        toolbarHeight: 80,
        backgroundColor: AppColors.veryLightGray,
        elevation: 0,
        title: Text(
          "INSURE",
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 35,
            color: AppColors.darkViolet,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              color: AppColors.darkViolet,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 170,
                vertical: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 170,
                    child: Divider(
                      color: AppColors.veryLightGray,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Humanizing",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 80,
                      color: AppColors.veryLightGray,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "your insurance.",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 80,
                      color: AppColors.veryLightGray,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Get your life insurance coverage easier and faster. We blend our expertise\nand technology to help you\nfind the plan that’s right for you. Ensure you and your loved ones are protected.",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: AppColors.veryLightGray,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
