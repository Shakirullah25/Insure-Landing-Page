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
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Humanizing\n",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 100,
                        color: AppColors.veryLightGray,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const
                    TextSpan(
                      text: "your insurance.",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 100,
                        color: AppColors.grayishBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]))
                  // Text(
                  //   "Humanizing\nyour insurance.",
                  //   style: GoogleFonts.dmSerifDisplay(
                  //     fontSize: 100,
                  //     color: AppColors.veryLightGray,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
