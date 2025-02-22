import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/app_bar.dart';
import 'package:insure_landing_page/colors.dart';

class InsureLandingPage extends StatelessWidget {
  const InsureLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 16,
                            color: AppColors.veryLightGray,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "VIEW PLANS",
                            style: GoogleFonts.karla(
                              fontSize: 18,
                              color: AppColors.veryLightGray,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                            backgroundColor: AppColors.darkViolet,
                            foregroundColor: AppColors.veryLightGray,
                            side: BorderSide(
                              color: AppColors.veryLightGray,
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 300),
                Divider(
                  color: AppColors.darkViolet.withOpacity(0.8),
                  thickness: 1,
                  indent: screenSize.width / 8.5,
                  endIndent: screenSize.width * 0,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 250,
                    //vertical: 100,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "We're different",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 40,
                          color: AppColors.veryDarkViolet,
                        ),
                      ),
                    ],
                  ),
                )
                // Padding(

// padding: const EdgeInsets.symmetric(
//                       horizontal: 170,
//                       vertical: 100,
//                     ),

                //   padding: const EdgeInsets.all(8.0),
                //   child: Divider(
                //     color: AppColors.darkViolet.withOpacity(0.8),
                //     thickness: 1,
                //     indent: screenSize.width / 6,
                //     endIndent: screenSize.width * 0.7,
                //   ),
                // ),
                // const SizedBox(height: 20),
                // Text(
                //   "We're different",
                //   style: GoogleFonts.dmSerifDisplay(
                //     fontSize: 25,
                //     color: AppColors.veryDarkViolet,
                //   ),
                // ),
              ],
            ),

            // Stacking
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 450),
                child: SvgPicture.asset(
                  "lib/assets/image/bg-pattern-intro-left-desktop.svg",
                  width: 450,
                  height: 450,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 80, horizontal: 150),
                child: Image.asset(
                  "lib/assets/image/image-intro-desktop.jpg",
                  width: 700,
                  height: 700,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(
                "lib/assets/image/bg-pattern-intro-right-desktop.svg",
                width: 500,
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
