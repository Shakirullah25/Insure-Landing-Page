import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/app_bar.dart';
import 'package:insure_landing_page/colors.dart';

class InsureLandingPage extends StatelessWidget {
  InsureLandingPage({super.key});

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
                  endIndent: screenSize.width * 0.75,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 180,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "We're different",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: screenSize.height * 0.07,
                          color: AppColors.veryDarkViolet,
                        ),
                      ),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: assets.map((asset) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                asset["path"],
                                width: screenSize.width * 0.11,
                                height: screenSize.height * 0.11,
                              ),
                              const SizedBox(height: 30),
                              Text(
                                textAlign: TextAlign.start,
                                asset['title'],
                                style: GoogleFonts.dmSerifDisplay(
                                  fontSize: 30,
                                  color: AppColors.veryDarkViolet,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                textAlign: TextAlign.start,
                                asset['description'],
                                style: GoogleFonts.karla(
                                  fontSize: 17,
                                  color: AppColors.darkGrayishViolet,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 100),
                      Container(
                        width: screenSize.width * 0.5,
                        height: screenSize.height * 0.4,
                        decoration: BoxDecoration(
                          color: AppColors.darkViolet,
                        )
                      )
                    ],
                  ),
                ),
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
