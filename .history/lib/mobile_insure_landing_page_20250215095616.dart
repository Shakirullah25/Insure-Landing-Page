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
        backgroundColor: AppColors.veryLightGray,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "INSURE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: AppColors.darkViolet,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: AppColors.darkViolet,
        width: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: AppColors.veryLightGray,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.close)
                    )
                ],
              ),
            ),
          ],
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
