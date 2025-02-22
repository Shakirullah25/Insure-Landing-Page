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
            child: Stack(
              alignment: ,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 400),
                  child: Divider(
                    color: AppColors.veryLightGray,
                    thickness: 2,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
