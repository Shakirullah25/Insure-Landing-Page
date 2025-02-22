import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/drawer_content.dart';

class MobileInsureLandingPage extends StatelessWidget {
  const MobileInsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "lib/assets/image/image-intro-mobile.jpg",
            width: screenWidth,
            height: screenHeight * 0.50,
            fit: BoxFit.cover,
          ),
          // first body container
          Container(
                  width: double.infinity,
                  height: 600,
                  decoration: const BoxDecoration(
                    color: AppColors.darkViolet,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
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
                          fontSize: 70,
                          color: AppColors.veryLightGray,
                        ),
                      ),
                      Text(
                        "your insurance.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 70,
                          color: AppColors.veryLightGray,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Get your life insurance coverage easier and faster. We blend our expertise\nand technology to help you find the plan that’s right for you. Ensure you\nand your loved ones are protected.",
                        style: GoogleFonts.karla(
                          fontSize: 16,
                          color: AppColors.veryLightGray,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => _onPressed("VIEW PLANS"),
                        child: Text(
                          "VIEW PLANS",
                          style: GoogleFonts.karla(
                            fontSize: 18,
                  
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 18),
                          backgroundColor: activeButton == "VIEW PLANS"
                              ? AppColors.veryLightGray // A
                              : AppColors.darkViolet, // NA
                          foregroundColor: activeButton == "VIEW PLANS"
                              ? AppColors.darkViolet
                              : AppColors.veryLightGray,
                          //foregroundColor: AppColors.veryLightGray,
                          side: BorderSide(
                            color: activeButton == "VIEW PLANS"
                                ? AppColors.darkViolet
                                : AppColors.veryLightGray,
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
      drawer: const DrawerContent(),
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
