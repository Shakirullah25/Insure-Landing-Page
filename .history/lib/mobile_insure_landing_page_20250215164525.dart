import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/drawer_content.dart';

class MobileInsureLandingPage extends StatelessWidget {
  MobileInsureLandingPage({super.key});

  final List<Map<String, dynamic>> assets = [
    {
      "path": "lib/assets/image/icon-snappy-process.svg",
      "title": "Snappy Process",
      "description":
          "Our application process can be completed\nin minutes, not hours. Don’t get stuck\nfilling in tedious forms."
    },
    {
      "path": "lib/assets/image/icon-affordable-prices.svg",
      "title": "Affordable Prices",
      "description":
          "We don’t want you worrying about high monthly\ncosts. Our prices may be low, but we still\noffer the best coverage possible."
    },
    {
      "path": "lib/assets/image/icon-people-first.svg",
      "title": "People First",
      "description":
          "Our plans aren’t full of conditions and clauses to\nprevent payouts. We make sure you’re\ncovered when you need it."
    },
  ];

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "lib/assets/image/image-intro-mobile.jpg",
              width: screenWidth,
              height: screenHeight * 0.50,
              fit: BoxFit.cover,
            ),
            // first body container
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.5,
                  decoration: const BoxDecoration(
                    color: AppColors.darkViolet,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Center(
                        child: Text(
                          "Humanizing",
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 50,
                            color: AppColors.veryLightGray,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "your insurance.",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 50,
                            color: AppColors.veryLightGray,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Get your life insurance coverage easier and faster. We blend our expertise and technology to help you find the plan that’s right for you. Ensure you and your loved ones are protected.",
                          style: GoogleFonts.karla(
                            fontSize: 16,
                            color: AppColors.veryLightGray,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 18),
                              backgroundColor: AppColors.darkViolet,
                              foregroundColor: AppColors.veryLightGray,
                              side: BorderSide(
                                color: AppColors.veryLightGray,
                              )
                              // backgroundColor: activeButton == "VIEW PLANS"
                              //     ? AppColors.veryLightGray // A
                              //     : AppColors.darkViolet, // NA
                              // foregroundColor: activeButton == "VIEW PLANS"
                              //     ? AppColors.darkViolet
                              //     : AppColors.veryLightGray,
                              // //foregroundColor: AppColors.veryLightGray,
                              // side: BorderSide(
                              //   color: activeButton == "VIEW PLANS"
                              //       ? AppColors.darkViolet
                              //       : AppColors.veryLightGray,

                              ),
                          child: Text(
                            "VIEW PLANS",
                            style: GoogleFonts.karla(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,

                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "lib/assets/image/bg-pattern-intro-left-mobile.svg",
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            // New section 1
            const SizedBox(height: 50),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: Divider(
                  color: AppColors.darkViolet.withOpacity(0.8),
                  thickness: 1,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "We're different",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: screenHeight * 0.05,
                      color: AppColors.veryDarkViolet,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: assets.map((asset) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            asset["path"],
                            width: screenWidth * 0.07,
                            height: screenHeight * 0.0,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            asset['title'],
                            style: GoogleFonts.dmSerifDisplay(
                              fontSize: 20,
                              color: AppColors.veryDarkViolet,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            asset['description'],
                            style: GoogleFonts.karla(
                              fontSize: 17,
                              color: AppColors.darkGrayishViolet,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
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
