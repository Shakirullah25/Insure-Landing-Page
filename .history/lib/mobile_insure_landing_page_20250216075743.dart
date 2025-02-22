import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insure_landing_page/colors.dart';
import 'package:insure_landing_page/drawer_content.dart';

class MobileInsureLandingPage extends StatefulWidget {
  MobileInsureLandingPage({super.key});

  @override
  State<MobileInsureLandingPage> createState() =>
      _MobileInsureLandingPageState();
}

class _MobileInsureLandingPageState extends State<MobileInsureLandingPage> {
  final List<Map<String, dynamic>> assets = [
    {
      "path": "lib/assets/image/icon-snappy-process.svg",
      "title": "Snappy Process",
      "description":
          "Our application process can be completed in minutes, not hours. Don’t get stuck filling in tedious forms."
    },
    {
      "path": "lib/assets/image/icon-affordable-prices.svg",
      "title": "Affordable Prices",
      "description":
          "We don’t want you worrying about high monthly costs. Our prices may be low, but we still offer the best coverage possible."
    },
    {
      "path": "lib/assets/image/icon-people-first.svg",
      "title": "People First",
      "description":
          "Our plans aren’t full of conditions and clauses to prevent payouts. We make sure you’re covered when you need it."
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

  String? activeButton;

  void _onPressed(String label) {
    setState(() {
      activeButton = label;
    });
  }

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
                                  horizontal: 25, vertical: 19),
                              backgroundColor: AppColors.darkViolet,
                              foregroundColor: AppColors.veryLightGray,
                              side: BorderSide(
                                color: AppColors.veryLightGray,
                              )),
                          child: Text(
                            "VIEW PLANS",
                            style: GoogleFonts.karla(
                              fontSize: 20,
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
                padding: const EdgeInsets.only(left: 110, right: 110),
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SvgPicture.asset(
                              asset["path"],
                              width: screenWidth * 0.09,
                              height: screenHeight * 0.09,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              asset['title'],
                              style: GoogleFonts.dmSerifDisplay(
                                fontSize: 30,
                                color: AppColors.veryDarkViolet,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              asset['description'],
                              style: GoogleFonts.karla(
                                fontSize: 19,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.38,
                  decoration: const BoxDecoration(
                    color: AppColors.darkViolet,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 0),
                      Text(
                        textAlign: TextAlign.center,
                        "Find out more about how we work",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 40,
                          color: AppColors.veryLightGray,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 19),
                            backgroundColor: AppColors.darkViolet,
                            foregroundColor: AppColors.veryLightGray,
                            side: BorderSide(
                              color: AppColors.veryLightGray,
                            ),
                          ),
                          child: Text(
                            "HOW WE WORK",
                            style: GoogleFonts.karla(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    "lib/assets/image/bg-pattern-how-we-work-mobile.svg",
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Container(
              width: double.infinity,
              height: screenHeight * 1.8,
              decoration: const BoxDecoration(
                color: AppColors.lightGrayishViolet,
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "lib/assets/image/bg-pattern-footer-mobile.svg",
                    width: 200,
                    height: 200,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 70),
                      Center(
                        child: Text(
                          "INSURE",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 30,
                            color: AppColors.darkViolet,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...footerAssets.map((assets) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(
                                assets["path"],
                                width: 27,
                                height: 27,
                                //color: AppColors.darkViolet,
                              ),
                            );
                          }),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Divider(
                        color: AppColors.darkGrayishViolet.withOpacity(0.4),
                        thickness: 1,
                        indent: screenWidth * 0.1,
                        endIndent: screenWidth * 0.1,
                      ),
                      const SizedBox(height: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: fAssets.map((newAssets) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Center(
                                  child: Text(
                                    newAssets['title'],
                                    style: GoogleFonts.karla(
                                      fontSize: 20,
                                      color: AppColors.darkGrayishViolet,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              ...newAssets['items'].map<Widget>((item) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () => _onPressed(item),
                                      style: ButtonStyle(
                                        foregroundColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                            if (states.contains(
                                                    MaterialState.pressed) ||
                                                activeButton == item) {
                                              return AppColors.darkViolet;
                                            }
                                            return AppColors.darkGrayishViolet;
                                          },
                                        ),
                                      ),
                                      child: Text(
                                        item,
                                        style: GoogleFonts.karla(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: activeButton == item
                                              ? AppColors.darkGrayishViolet
                                              : AppColors.veryDarkViolet,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ],
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 40),
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
                                    color: constAppColors.darkGrayishViolet,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Center(
                                child: TextWithUrl(),
                              )
                    ],
                  )
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 70),
                  //   child: Center(
                  //     child: Text(
                  //       "INSURE",
                  //       style: GoogleFonts.dmSerifDisplay(
                  //         fontSize: 30,
                  //         color: AppColors.darkViolet,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // //const SizedBox(height: 30),
                  // Text("Data"),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     ...footerAssets.map((assets) {
                  //       return Padding(
                  //         padding:
                  //             const EdgeInsets.symmetric(horizontal: 10),
                  //         child: SvgPicture.asset(
                  //           assets["path"],
                  //           width: 27,
                  //           height: 27,
                  //           //color: AppColors.darkViolet,
                  //         ),
                  //       );
                  //     }),
                  //   ],
                  // )
                ],
              ),
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



                              // backgroundColor:
                    //     activeButton == "HOW WE WORK"
                    //         ? AppColors.veryLightGray // A
                    //         : AppColors.darkViolet, // NA
                    // foregroundColor:
                    //     activeButton == "HOW WE WORK"
                    //         ? AppColors.darkViolet
                    //         : AppColors.veryLightGray,
                    // //foregroundColor: AppColors.verydLightGray,
                    // side: BorderSide(
                    //   color: activeButton == "HOW WE WORK"
                    //       ? AppColors.darkViolet
                    //       : AppColors.veryLightGray,
                    //   width: 1,
                    // ),












Container(
                        width: double.infinity,
                        height: screenHeight * 0.7,
                        decoration: const BoxDecoration(
                          color: AppColors.lightGrayishViolet,
                        ),
                        child: Stack(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "lib/assets/image/bg-pattern-footer-mobile.svg",
                              width: 300,
                              height: 300,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "INSURE",
                                      style: GoogleFonts.dmSerifDisplay(
                                        fontSize: 27,
                                        color: AppColors.darkViolet,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ...footerAssets.map((assets) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {},
                                          // onTap: () => _onPressed(assets["path"]),
                                          child: SvgPicture.asset(
                                            assets["path"],
                                            width: 27,
                                            height: 27,
                                            color: AppColors.darkViolet,
                                            // color: activeButton == assets["path"]
                                            //     ? AppColors.veryDarkViolet
                                            //     : AppColors.darkViolet,
                                          ),
                                        ),
                                      );
                                    }),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  onPressed: () {},
                                                  //  _onPressed(item),
                                                  child: Text(
                                                    item,
                                                    style: GoogleFonts.karla(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors
                                                          .darkGrayishViolet,
                                                      // color: activeButton == item
                                                      //     ? AppColors
                                                      //         .veryDarkViolet
                                                      //     : AppColors
                                                      //         .darkGrayishViolet,
                                                    ),
                                                  ),
                                                  style: ButtonStyle(
                                                    foregroundColor:
                                                        WidgetStateProperty
                                                            .resolveWith<
                                                                Color>((Set<
                                                                    WidgetState>
                                                                states) {
                                                      if (states.contains(
                                                          WidgetState
                                                              .pressed)) {
                                                        return AppColors
                                                            .veryDarkViolet;
                                                      }
                                                      return AppColors
                                                          .darkGrayishViolet;
                                                    }),
                                                    // style: ButtonStyle(
                                                    //   foregroundColor:
                                                    //       MaterialStateProperty
                                                    //           .resolveWith<Color>(
                                                    //     (Set<MaterialState>
                                                    //         states) {
                                                    //       if (states.contains(
                                                    //               MaterialState
                                                    //                   .pressed) ||
                                                    //           activeButton ==
                                                    //               item) {
                                                    //         return AppColors
                                                    //             .veryDarkViolet;
                                                    //       }
                                                    //       return AppColors
                                                    //           .darkGrayishViolet;
                                                    //     },
                                                    //   ),
                                                    // ),
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
                          ],
                        ),
                      ),


*/
