import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/app_bar.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/text_with_url.dart';

class InsureLandingPage extends StatefulWidget {
  InsureLandingPage({super.key});

  @override
  _InsureLandingPageState createState() => _InsureLandingPageState();
}

class _InsureLandingPageState extends State<InsureLandingPage> {
  String? activeButton;

  void _onPressed(String label) {
    setState(() {
      activeButton = label;
    });
  }

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

  final List<Map<String, dynamic>> footerAssets = [
    {"path": "lib/assets/image/icon-facebook.svg"},
    {"path": "lib/assets/image/icon-twitter.svg"},
    {"path": "lib/assets/image/icon-pinterest.svg"},
    {"path": "lib/assets/image/icon-instagram.svg"},
  ];

  final List<Map<String, dynamic>> fAssets = [
    {
      "title": "OUR COMPANY",
      "items": ["HOW WE WORK", "WHY INSURE", "VIEW PLANS", "REVIEWS"],
    },
    {
      "title": "HELP ME",
      "items": ["FAQ", "TERMS OF USE", "PRIVACY POLICY", "COOKIES"],
    },
    {
      "title": "CONTACT",
      "items": [
        "SALES",
        "SUPPORT",
        "LIVE CHAT",
      ],
    },
    {
      "title": "OTHERS",
      "items": [
        "CAREERS",
        "PRESS",
        "LICENSES",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size; // Screen Size
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
                  decoration: const BoxDecoration(
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
                              color: AppColors.veryLightGray,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                            backgroundColor: activeButton == "VIEW PLANS"
                                ? AppColors.veryDarkViolet
                                : AppColors.darkViolet,
                            foregroundColor: AppColors.veryLightGray,
                            side: const BorderSide(
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
                      const SizedBox(height: 120),
                      Container(
                        width: screenSize.width * 0.89,
                        height: screenSize.height * 0.35,
                        decoration: const BoxDecoration(
                          color: AppColors.darkViolet,
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                  ),
                                  child: Text(
                                    "Find out more\nabout how we work",
                                    style: GoogleFonts.dmSerifDisplay(
                                      fontSize: 50,
                                      color: AppColors.veryLightGray,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    "lib/assets/image/bg-pattern-how-we-work-desktop.svg",
                                    width: 300,
                                    height: 300,
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 700),
                                child: ElevatedButton(
                                  onPressed: () => _onPressed("HOW WE WORK"),
                                  style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18, vertical: 16),
                                    backgroundColor: activeButton == "HOW WE WORK"
                                        ? AppColors.veryDarkViolet
                                        : AppColors.darkViolet,
                                    foregroundColor: AppColors.veryLightGray,
                                    side: const BorderSide(
                                      color: AppColors.veryLightGray,
                                      width: 1,
                                    ),
                                  ),
                                  child: Text(
                                    "HOW WE WORK",
                                    style: GoogleFonts.karla(
                                      fontSize: 16,
                                      color: AppColors.veryLightGray,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                Container(
                  width: double.infinity,
                  height: screenSize.height * 0.7,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrayishViolet,
                  ),
                  child: SingleChildScrollView(
                    child: Stack(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/image/bg-pattern-footer-desktop.svg",
                          width: 300,
                          height: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 200,
                            right: 170,
                            top: 50,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "INSURE",
                                    style: GoogleFonts.dmSerifDisplay(
                                      fontSize: 27,
                                      color: AppColors.darkViolet,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  ...footerAssets.map((assets) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: GestureDetector(
                                        onTap: () => _onPressed(assets["path"]),
                                        child: SvgPicture.asset(
                                          assets["path"],
                                          width: 27,
                                          height: 27,
                                          color: activeButton == assets["path"]
                                              ? AppColors.veryDarkViolet
                                              : AppColors.darkViolet,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Divider(
                                color: AppColors.darkGrayishViolet
                                    .withOpacity(0.9),
                                thickness: 1,
                              ),
                              const SizedBox(height: 40),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: fAssets.map((newAssets) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 80),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            newAssets['title'],
                                            style: GoogleFonts.karla(
                                              fontSize: 20,
                                              color:
                                                  AppColors.darkGrayishViolet,
                                            ),
                                          ),
                                          const SizedBox(height: 30),
                                          ...newAssets['items']
                                              .map<Widget>((item) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 7),
                                              child: TextButton(
                                                onPressed: () => _onPressed(item),
                                                style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color>(
                                                    (Set<MaterialState> states) {
                                                      if (states.contains(
                                                              MaterialState
                                                                  .pressed) ||
                                                          activeButton == item) {
                                                        return AppColors
                                                            .veryDarkViolet;
                                                      }
                                                      return AppColors
                                                          .darkViolet;
                                                    },
                                                  ),
                                                ),
                                                child: Text(
                                                  item,
                                                  style: GoogleFonts.karla(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                              const SizedBox(height: 40),
                              Divider(
                                color: AppColors.darkGrayishViolet
                                    .withOpacity(0.95),
                                thickness: 1,
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Text(
                                  "\u00A9 INSURE 2025, All Rights Reserved",
                                  style: GoogleFonts.karla(
                                    fontSize: 15,
                                    color: AppColors.darkGrayishViolet,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Center(
                                child: TextWithUrl(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
